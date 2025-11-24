
part of '../data/trading_database.dart';
// 示例：账户表的 DAO 类
@DriftAccessor(tables: [Accounts])
class AccountDao extends DatabaseAccessor<TradingDatabase> with _$AccountDaoMixin {
  AccountDao(TradingDatabase db) : super(db);

  // 插入新账户
  Future<int> insertAccount(Account account) {
    return into(db.accounts).insert(account);
  }

  // 根据ID获取账户
  Future<Account> getAccountById(int id) {
    return (select(db.accounts)..where((a) => a.id.equals(id))).getSingle();
  }

  // 获取所有账户
  Future<List<Account>> getAllAccounts() {
    return select(db.accounts).get();
  }

  // 删除账户
  Future<int> deleteAccount(int id) {
    return (delete(db.accounts)..where((a) => a.id.equals(id))).go();
  }

  // 更新账户信息
  Future<bool> updateAccount(Account account) {
    return update(db.accounts).replace(account);
  }
  // 获取账户的总余额（例如，可以进行汇总或其他分析操作）
  Future<double> getTotalBalance() async {
    final result = await( db.select(db.accounts)).get();
    // 使用 fold 累加账户余额，确保 sum 是一个 Future<double>
    final totalBalance = await result.fold<Future<double>>(
      Future.value(0.0), // 初始值为 0.0，类型为 Future<double>
          (Future<double> sum, Account row) async {
        final balance = row.balance;  // 假设 balance 是同步的
        return sum.then((s) => s + balance);  // 使用 .then 来处理累加过程
      },
    );

    return totalBalance;
  }

}
