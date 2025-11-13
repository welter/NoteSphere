part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//交易记录备注表
class Remarks extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.IntColumn get transactionId =>
      integer().references(Transactions, #id, onDelete: KeyAction.cascade)();//交易记录id
  drift.TextColumn get remarksText => text().nullable()();//文本
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
*/

// 交易记录备注表的 DAO 类
@DriftAccessor(tables: [Remarks])
class RemarksDao extends DatabaseAccessor<TradingDatabase> with _$RemarksDaoMixin {
  final TradingDatabase db;

  RemarksDao(this.db) : super(db);

  // 插入交易记录备注
  Future<int> insertMood(RemarksCompanion remark) {
    return into(db.remarks).insert(remark);
  }

  // 获取所有交易记录备注
  Future<List<Remark>> getAllRemarks() {
    return select(db.remarks).get();
  }

  // 根据ID获取交易记录备注
  Future<Remark?> getRemarkById(int id) {
    return (select(db.remarks)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据交易ID获取交易记录备注
  Future<Remark?> getRemarkByTransactionId(int id) {
    return (select(db.remarks)..where((t) =>  t.transactionId.equals(id))).getSingleOrNull();
  }
}
