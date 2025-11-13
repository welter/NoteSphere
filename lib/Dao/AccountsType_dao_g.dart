part of '../data/trading_database.dart'; // 指定为主数据库的一部分

// 账户类型的 DAO 类
@DriftAccessor(tables: [AccountTypes])
class AccountsTypeDao extends DatabaseAccessor<TradingDatabase> with _$AccountsTypeDaoMixin {
  final TradingDatabase db;

  AccountsTypeDao(this.db) : super(db);

  // 插入账户类型
  Future<int> insertAccountType(AccountTypesCompanion accountType) {
    return into(db.accountTypes).insert(accountType);
  }

  // 获取所有账户类型
  Future<List<AccountType>> getAllAccountTypes() {
    return select(db.accountTypes).get();
  }

  // 根据账户类型ID获取账户类型
  Future<AccountType?> getAccountTypeById(int id) {
    return (select(db.accountTypes)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询账户类型
  Future<List<AccountType>> getAccountTypesByName(String name) {
    return (select(db.accountTypes)..where((t) => t.name.like('%$name%'))).get();
  }
}
