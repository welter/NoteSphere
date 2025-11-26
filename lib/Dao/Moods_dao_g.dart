part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//心情表
class Moods extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
  drift.TextColumn get iconName => text().nullable()();//图标名称
}

*/

// 心情的 DAO 类
@DriftAccessor(tables: [Moods])
class MoodsDao extends DatabaseAccessor<TradingDatabase> with _$MoodsDaoMixin {
  final TradingDatabase db;

  MoodsDao(this.db) : super(db);

  // 插入心情
  Future<int> insertMood(Mood mood) {
    return into(db.moods).insert(mood);
  }

  // 获取所有心情
  Future<List<Mood>> getAllMoods() {
    return select(db.moods).get();
  }

  // 更新心情
  Future<bool> updatetMood(Mood mood) {
    return update(db.moods).replace(mood);
  }

  // 根据ID获取心情
  Future<Mood?> getMoodById(int id) {
    return (select(db.moods)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询心情
  Future<List<Mood>> getMoodByName(String name) {
    return (select(db.moods)..where((t) => t.name.like('%$name%'))).get();
  }
}
