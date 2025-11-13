part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//系统配置表
class Settings extends drift.Table {
  drift.TextColumn get key => text()();
  drift.TextColumn get value => text().nullable()();
  @override
  Set<drift.Column> get primaryKey => {key};
}

*/

// 标签表的 DAO 类

@DriftAccessor(tables: [Settings])
class SettingsDao extends DatabaseAccessor<TradingDatabase> with _$SettingsDaoMixin {
  final TradingDatabase db;

  SettingsDao(this.db) : super(db);

  // 插入标签
  Future<int> insertSetting(SettingsCompanion settings) {
    return into(db.settings).insert(settings);
  }

  // 获取所有标签
  Future<List<Setting>> getAllSettings() {
    return select(db.settings).get();
  }

  // 根据ID获取标签
  Future<List<Setting>> getSettingByKey(String key) {
    return (select(db.settings)..where((t) => t.key.like('%$key%'))).get();;
  }

}
