part of '../data/trading_database.dart'; // 指定为主数据库的一部分

/*
//交易记录备注附件表
class RemarkMedia extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.IntColumn get remarkId =>
      integer().references(Remarks, #id, onDelete: KeyAction.cascade)();//备注id
  drift.TextColumn get mediaType => text()();//附件类型
  drift.TextColumn get filePath => text()();//附件路径
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
*/

// 交易记录备注附件表的 DAO 类
@DriftAccessor(tables: [RemarkMedia])
class RemarkMediaDao extends DatabaseAccessor<TradingDatabase> with _$RemarkMediaDaoMixin {
  final TradingDatabase db;

  RemarkMediaDao(this.db) : super(db);

  // 插入交易记录备注附件
  Future<int> insertRemarkMedia(RemarkMediaCompanion remarkMedia) {
    return into(db.remarkMedia).insert(remarkMedia);
  }

  // 获取所有交易记录备注附件
  Future<List<RemarkMediaData>> getAllRemarkMedia() {
    return select(db.remarkMedia).get();
  }

  // 根据ID获取交易记录备注附件
  Future<RemarkMediaData?> getRemarkMediaById(int id) {
    return (select(db.remarkMedia)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据交备注ID获取交易记录备注附件
  Future<RemarkMediaData?> getRemarkMediaByRemarkId(int id) {
    return (select(db.remarkMedia)..where((t) =>  t.remarkId.equals(id))).getSingleOrNull();
  }
}
