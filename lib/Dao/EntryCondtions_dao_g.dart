part of '../data/trading_database.dart'; // 指定为主数据库的一部分


/*
//进场状态表
class EntryConditions extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
*/

// 进场状态表的 DAO 类
@DriftAccessor(tables: [EntryConditions])
class EntryConditionDao extends DatabaseAccessor<TradingDatabase> with _$EntryConditionDaoMixin {
  final TradingDatabase db;

  EntryConditionDao(this.db) : super(db);

  // 插入进场状态
  Future<int> insertEntryCondition(EntryCondition entryCondition) {
    return into(db.entryConditions).insert(entryCondition);
  }

  // 获取所有进场状态
  Future<List<EntryCondition>> getAllEntryConditions() {
    return select(db.entryConditions).get();
  }

  // 更新进场状态
  Future<bool> updateEntryCondition(EntryCondition entryCondition) {
    return update(db.entryConditions).replace(entryCondition);
  }

  // 根据ID获取进场状态
  Future<EntryCondition?> getEntryConditionTypeById(int id) {
    return (select(db.entryConditions)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询进场状态
  Future<List<EntryCondition>> getEntryConditionByName(String name) {
    return (select(db.entryConditions)..where((t) => t.name.like('%$name%'))).get();
  }
}
