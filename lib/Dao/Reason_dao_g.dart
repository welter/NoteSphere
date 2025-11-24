part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//常用交易理由表
class Reason extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();

  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}

*/

// 常用交易理由的 DAO 类
@DriftAccessor(tables: [Moods])
class ReasonDao extends DatabaseAccessor<TradingDatabase> with _$ReasonDaoMixin {
  final TradingDatabase db;

  ReasonDao(this.db) : super(db);

  // 插入常用交易理由
  Future<int> insertReason(ReasonData reason) {
    return into(db.reason).insert(reason);
  }

  // 获取所有常用交易理由
  Future<List<ReasonData>> getAllReasons() {
    return select(db.reason).get();
  }

  // 更新常用交易理由
  Future<bool> updateReason(ReasonData reason) {
    return update(db.reason).replace(reason);
  }

  // 根据ID获取常用交易理由
  Future<ReasonData?> getReasonById(int id) {
    return (select(db.reason)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询常用交易理由
  Future<List<ReasonData>> getReasonByName(String name) {
    return (select(db.reason)..where((t) => t.name.like('%$name%'))).get();
  }
}
