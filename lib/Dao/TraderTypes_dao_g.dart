part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//交易类型表
class TraderTypes extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
*/

// 交易类型表的 DAO 类
@DriftAccessor(tables: [TraderTypes])
class TraderTypesDao extends DatabaseAccessor<TradingDatabase> with _$TraderTypesDaoMixin {
  final TradingDatabase db;

  TraderTypesDao(this.db) : super(db);

  // 插入交易类型
  Future<int> insertTraderType(TraderType traderType) {
    return into(db.traderTypes).insert(traderType);
  }

  // 更新交易类型
  Future<bool> updateTraderType(TraderType traderType) {
    return update(db.traderTypes).replace(traderType);
  }
  // 获取所有交易类型
  Future<List<TraderType>> getAllTraderTypes() {
    return select(db.traderTypes).get();
  }

  // 根据ID获取交易类型
  Future<TraderType?> getTraderTypesById(int id) {
    return (select(db.traderTypes)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询交易类型
  Future<List<TraderType>> getTraderTypesByName(String name) {
    return (select(db.traderTypes)..where((t) => t.name.like('%$name%'))).get();
  }
}
