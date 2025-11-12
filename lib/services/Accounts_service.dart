import 'dart:js_interop';

import 'package:drift/drift.dart';
import '../data/trading_database.dart';  // 引入 Drift 数据库
import '../models/Accounts_model.dart';
class AccountService {
  final TradingDatabase db;  // 引用数据库实例

  AccountService(this.db);  // 构造函数

  // 1. 创建账户
  Future<int> createAccount(String name, {String type = 'stock', String currency = 'CNY'}) async {
    final accountCompanion = AccountsCompanion.insert(
      name: name,
      typeId: Value(1).value, // 默认使用账户类型的 ID
      currency: Value(currency),
      balance: const Value(0.0), // 默认余额为 0.0
      createdAt: DateTime.now(),
    );

    return db.into(db.accounts).insert(accountCompanion);  // 插入账户到数据库
  }

  // 2. 获取所有账户
  Future<List<m_Account>> getAllAccounts() async {
    final result = await db.select(db.accounts).get();  // 查询所有账户
    return result.map((row) => m_Account.fromAccount(row)).toList();  // 转换成 Account 对象并返回
  }

  // 3. 获取单个账户
  Future<m_Account?> getAccountById(int id) async {
    final result = await (db.select(db.accounts)..where((a) => a.id.equals(id))).getSingleOrNull();
    return result != null ? m_Account.fromAccount(result) : null;
  }

  // 4. 更新账户信息
  Future<bool> updateAccount(Account account) async {
    final updatedCompanion = AccountsCompanion(
      name: Value(account.name),
      typeId: Value(account.typeId),
      currency: Value(account.currency),
      balance: Value(account.balance),
      createdAt: Value(account.createdAt),
    );

    final count = await (db.update(db.accounts)..where((a) => a.id.equals(account.id)))
        .write(updatedCompanion);  // 更新数据库
    return count > 0;  // 如果更新了数据，返回 true
  }

  // 5. 删除账户
  Future<int> deleteAccount(int id) async {
    return (db.delete(db.accounts)..where((a) => a.id.equals(id))).go();  // 删除指定账户
  }

  // 6. 根据账户类型查询账户
  Future<List<m_Account>> getAccountsByType(int typeId) async {
    final result = await (db.select(db.accounts)..where((a) => a.typeId.equals(typeId))).get();
    return result.map((row) => m_Account.fromAccount(row)).toList();
  }

  // 7. 获取账户的总余额（例如，可以进行汇总或其他分析操作）
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
