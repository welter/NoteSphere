part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//交易分类表，一个交易可属多个分类，分类有树状层次
class Categories extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();

  drift.TextColumn get name => text().nullable()(); //名称
  drift.IntColumn get parentId => integer().withDefault(0 as drift.Expression<int>)(); //父标签id
  drift.IntColumn get transactionId =>
      integer().references(Transactions, #id, onDelete: KeyAction.cascade)();//交易记录id
  drift.DateTimeColumn get createdAt => dateTime()(); //创建时间
}


*/

// 交易分类的 DAO 类
@DriftAccessor(tables: [Categories])
class CategoriesDao extends DatabaseAccessor<TradingDatabase> with _$CategoriesDaoMixin {
  final TradingDatabase db;

  CategoriesDao(this.db) : super(db);

  // 插入交易分类
  Future<int> insertCategorie(CategoriesCompanion categorie) {
    return into(db.categories).insert(categorie);
  }

  // 获取所有交易分类
  Future<List<Category>> getAllCategories() {
    return select(db.categories).get();
  }

  // 根据ID获取交易分类
  Future<Category?> getCategorieById(int id) {
    return (select(db.categories)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据ID获取所属所有下级交易分类
  Future<Category?> getAllFollowingCategorieById(int topId) {
    return (select(db.categories)..where((t) => t.parentId.equals(topId))).getSingleOrNull();
  }
  // 根据名称查询心情
  Future<List<Category>> getCategorieByName(String name) {
    return (select(db.categories)..where((t) => t.name.like('%$name%'))).get();
  }

  // 根据ID删除交易分类，包括所有下级交易分类
  Future deleteAllFollowingCategorieById(int topId) {
    return (delete(db.categories)..where((t) => t.parentId.equals(topId))).go();
  }
}
