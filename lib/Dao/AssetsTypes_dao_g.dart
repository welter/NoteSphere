part of '../data/trading_database.dart'; // 指定为主数据库的一部分

// 资产类型的 DAO 类
@DriftAccessor(tables: [AssetsTypes])
class AssetsTypesDao extends DatabaseAccessor<TradingDatabase> with _$AssetsTypesDaoMixin {
  final TradingDatabase db;

  AssetsTypesDao(this.db) : super(db);

  // 插入资产类型
  Future<int> insertAssetsType(AssetsType assetsType) {
    return into(db.assetsTypes).insert(assetsType);
  }

  // 获取所有资产类型
  Future<List<AssetsType>> getAllAssetsTypes() {
    return select(db.assetsTypes).get();
  }

  // 更新资产类型
  Future<bool> updateAssetsType(AssetsType assetsType) {
    return update(db.assetsTypes).replace(assetsType);
  }

  // 根据资产类型ID获取资产类型
  Future<AssetsType?> getAssetsTypeById(int id) {
    return (select(db.assetsTypes)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询资产类型
  Future<List<AssetsType>> getAssetsTypesByName(String name) {
    return (select(db.assetsTypes)..where((t) => t.name.like('%$name%'))).get();
  }
}
