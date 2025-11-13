part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//side买卖方向表
class Sides extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
*/

// 买卖方向的 DAO 类
@DriftAccessor(tables: [Sides])
class SidesDao extends DatabaseAccessor<TradingDatabase> with _$SidesDaoMixin {
  final TradingDatabase db;

  SidesDao(this.db) : super(db);

  // 插入买卖方向
  Future<int> insertMood(SidesCompanion side) {
    return into(db.sides).insert(side);
  }

  // 获取所有买卖方向
  Future<List<Side>> getAllSides() {
    return select(db.sides).get();
  }

  // 根据ID获取买卖方向
  Future<Side?> getSideById(int id) {
    return (select(db.sides)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询买卖方向
  Future<List<Side>> getSideByName(String name) {
    return (select(db.sides)..where((t) => t.name.like('%$name%'))).get();
  }
}
