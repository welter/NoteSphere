part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//交易记录附件表（暂不使用，备用）
class TransactionMedia extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.IntColumn get transactionId =>
      integer().references(Transactions, #id, onDelete: KeyAction.cascade)();//交易记录id
  drift.TextColumn get mediaType => text()();//附件类型
  drift.TextColumn get filePath => text()();//附件路径
  drift.TextColumn get note => text().nullable()();//文本
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
*/

// 交易记录附件表的 DAO 类
@DriftAccessor(tables: [TransactionMedia])
class TransactionMediaDao extends DatabaseAccessor<TradingDatabase> with _$TransactionMediaDaoMixin {
  final TradingDatabase db;

  TransactionMediaDao(this.db) : super(db);

  // 插入交易记录附件
  Future<int> insertTransactionMedia(TransactionMediaCompanion transactionMedia) {
    return into(db.transactionMedia).insert(transactionMedia);
  }

  // 获取所有交易记录附件
  Future<List<TransactionMediaData>> getAllTransactionMedias() {
    return select(db.transactionMedia).get();
  }

  // 根据ID获取交易记录附件
  Future<TransactionMediaData?> getTransactionMediaById(int id) {
    return (select(db.transactionMedia)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据交易ID获取交易记录附件
  Future<TransactionMediaData?> getTransactionMediaByTransactionId(int id) {
    return (select(db.transactionMedia)..where((t) =>  t.transactionId.equals(id))).getSingleOrNull();
  }
}
