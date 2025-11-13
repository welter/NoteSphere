part of '../data/trading_database.dart'; // 指定为主数据库的一部分


/*
//交易场所表
class Sessions extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
*/

// 交易场所表的 DAO 类
@DriftAccessor(tables: [Sessions])
class SessionsDao extends DatabaseAccessor<TradingDatabase> with _$SessionsDaoMixin {
  final TradingDatabase db;

  SessionsDao(this.db) : super(db);

  // 插入交易场所
  Future<int> insertSession(SessionsCompanion sessions) {
    return into(db.sessions).insert(sessions);
  }

  // 获取所有交易场所
  Future<List<Session>> getAllSessions() {
    return select(db.sessions).get();
  }

  // 根据ID获取交易场所
  Future<Session?> getSessionById(int id) {
    return (select(db.sessions)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  // 根据名称查询交易场所
  Future<List<Session>> getSessionByName(String name) {
    return (select(db.sessions)..where((t) => t.name.like('%$name%'))).get();
  }
}
