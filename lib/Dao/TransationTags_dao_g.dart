part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//交易记录和标签关联表
class TransactionTags extends drift.Table {
  drift.IntColumn get transactionId => integer().references(Transactions, #id)();//交易记录id
  drift.IntColumn get tagId => integer().references(Tags, #id)();//标签id
  @override
  Set<drift.Column> get primaryKey => {transactionId, tagId};
}
*/

// 易记录和标签关联表的 DAO 类
@DriftAccessor(tables: [TransactionTags])
class TransactionTagsDao extends DatabaseAccessor<TradingDatabase> with _$TransactionTagsDaoMixin {
  final TradingDatabase db;

  TransactionTagsDao(this.db) : super(db);

  // 插入易记录和标签关联
  Future<int> insertTransactionTag(TransactionTagsCompanion transactionTag) {
    return into(db.transactionTags).insert(transactionTag);
  }

  // 获取所有易记录和标签关联
  Future<List<TransactionTag>> getAllTransactionTags() {
    return select(db.transactionTags).get();
  }

  // 根据交易ID获取易记录和标签关联
  Future<TransactionTag?> getTransactionTagByTransactionId(int id) {
    return (select(db.transactionTags)..where((t) => t.transactionId.equals(id))).getSingleOrNull();
  }

  // 根据标签id查询易记录和标签关联
  Future<TransactionTag?> getTransactionTagsByTagId(int id) {
    return (select(db.transactionTags)..where((t) => t.tagId.equals(id))).getSingleOrNull();
  }
}
