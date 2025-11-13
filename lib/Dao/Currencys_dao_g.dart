part of '../data/trading_database.dart'; // 指定为主数据库的一部分
/*//货币类型表
class Currencys extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}*/



// 账户类型的 DAO 类
@DriftAccessor(tables: [Currencys])
class CurrencysDao extends DatabaseAccessor<TradingDatabase> with _$CurrencysDaoMixin {
  final TradingDatabase db;

  CurrencysDao(this.db) : super(db);

  // 插入账户类型
  Future<int> insertCurrency(CurrencysCompanion currency) {
    return into(db.currencys).insert(currency);
  }

  // 获取所有账户类型
  Future<List<Currency>> getAllCurrencys() {
    return select(db.currencys).get();
  }

  // 根据账户类型ID获取账户类型
  Future<Currency?> getCurrencyById(int id) {
    return (select(db.currencys)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询账户类型
  Future<List<Currency>> getCurrencyByName(String name) {
    return (select(db.currencys)..where((t) => t.name.like('%$name%'))).get();
  }
}
