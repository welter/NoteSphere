
part of '../data/trading_database.dart';
// 示例：股票标的表的 DAO 类

/*
//交易记录表
class Transactions extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();

  drift.IntColumn get accountId => integer().references(Accounts, #id)();//交易所使用的账户id
  drift.IntColumn get assetId => integer().references(Assets, #id)();//交易所使用的资产id

  drift.DateTimeColumn get date => dateTime()();//交易时间
  drift.IntColumn get sideId => integer().references(Sides, #id)();//side 字段的常见取值： Buy（买入）：表示你在购买某个资产（如股票、期货等），这意味着你希望在未来以更高的价格出售它以获利。
                                 // Sell（卖出）：表示你在出售某个资产，这意味着你希望通过卖出资产来实现盈利或止损。 Long（做多）：有时也会使用 side
                                // 来表示你做多的方向（实际上这与买入相同，但在期货或外汇市场中，做多通常用 long）。 Short（做空）：相反，side 也可能表示
                               // 你做空的方向（即卖空资产，预期资产价格下跌）
  drift.RealColumn get quantity => real()();//交易数量
  drift.RealColumn get price => real()();//交易价格
  drift.RealColumn get notional => real().nullable()();
  drift.RealColumn get fee => real().withDefault(const drift.Constant(0.0))();//交易费用
  drift.RealColumn get tax => real().withDefault(const drift.Constant(0.0))();//交易税款

  drift.TextColumn get reason => text().nullable()();//交易理由
  drift.IntColumn get entryConditionId => integer().references(EntryConditions, #id)();//进场状态
  drift.IntColumn get sessionId => integer().references(Sessions, #id)();//交易场所
  drift.IntColumn get traderTypeId => integer().references(TraderTypes, #id)();//交易类型
  drift.RealColumn get stopLoss => real().nullable()();//止损位
  drift.RealColumn get exitPrice => real().nullable()();//预期离场价
  drift.IntColumn get moodId => integer().references(Moods, #id)();//心情

  drift.DateTimeColumn get createdAt => dateTime()();//记录创建时间
}*/
@DriftAccessor(tables: [Transactions])
class TransactionDao extends DatabaseAccessor<TradingDatabase> with _$TransactionDaoMixin {
  TransactionDao(super.db);

  // 插入新股票（标的）
  Future<int> insertAssets(TransactionsCompanion transactions) {
    return into(db.transactions).insert(transactions);
  }

  // 根据ID获取股票（标的）
  Future<Transaction> getTransactionsById(int id) {
    return (select(db.transactions)..where((a) => a.id.equals(id))).getSingle();
  }

  // 获取所有股票（标的）
  Future<List<Transaction>> getTransactions() {
    return select(db.transactions).get();
  }

  // 删除股票（标的）
  Future<int> deleteTransactions(int id) {
    return (delete(db.transactions)..where((a) => a.id.equals(id))).go();
  }

  // 更新股票（标的）信息
  Future<bool> updateTransactions(TransactionsCompanion transactions) {
    return update(db.transactions).replace(transactions);
  }
  // 根据symbol_ID获取股票（标的）信息
  //Future<Transaction> getTransactionsBySymbol(String symbol) {
  //  return (select(db.transactions)..where((a) => a.equals(1))).getSingle();
 // }
//根据账户accountId获取股票（标的）信息
  Future<Transaction> getTransactionsByaccountId(int accountId) {
    return (select(db.transactions)
      ..where((a) => a.accountId.equals(accountId))).getSingle();
  }
  //根据账户assetId获取股票（标的）信息
  Future<Transaction> getTransactionsByassetId(int assetId) {
    return (select(db.transactions)
      ..where((a) => a.assetId.equals(assetId))).getSingle();
  }
  //根据账户sessionId（标的）信息
  Future<Transaction> getTransactionsBysessionId(int sessionId) {
    return (select(db.transactions)
      ..where((a) => a.sessionId.equals(sessionId))).getSingle();
  }

  //根据账户sideId获取股票（标的）信息
  Future<Transaction> getTransactionsBysideId(int sideId) {
    return (select(db.transactions)
      ..where((a) => a.sideId.equals(sideId))).getSingle();
  }

  //根据账户entryConditionId获取股票（标的）信息
  Future<Transaction> getTransactionsByentryConditionId(int entryConditionId) {
    return (select(db.transactions)
      ..where((a) => a.entryConditionId.equals(entryConditionId))).getSingle();
  }

  //根据账户TypeId获取股票（标的）信息
  Future<Transaction> getTransactionsBytraderTypeId(int traderTypeId) {
    return (select(db.transactions)
      ..where((a) => a.traderTypeId.equals(traderTypeId))).getSingle();
  }
  //根据账户TypeId获取股票（标的）信息
  Future<Transaction> getTransactionsBydate(DateTime date) {
    return (select(db.transactions)
      ..where((a) => a.date.equals(date))).getSingle();
  }
}
