part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//标签表，标签记录以方便分析
class Tags extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text()();//标签名称
  drift.TextColumn get color => text().nullable()();//标签颜色
}
*/

// 标签表的 DAO 类
@DriftAccessor(tables: [Tags])
class TagsDao extends DatabaseAccessor<TradingDatabase> with _$TagsDaoMixin {
  final TradingDatabase db;

  TagsDao(this.db) : super(db);

  // 插入标签
  Future<int> insertTag(TagsCompanion tag) {
    return into(db.tags).insert(tag);
  }

  // 获取所有标签
  Future<List<Tag>> getAllTags() {
    return select(db.tags).get();
  }

  // 根据ID获取标签
  Future<Tag?> getTagById(int id) {
    return (select(db.tags)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询标签
  Future<List<Tag>> getTagByName(String name) {
    return (select(db.tags)..where((t) => t.name.like('%$name%'))).get();
  }
}
