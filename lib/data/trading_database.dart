// lib/data/trading_database.dart

import 'dart:io';
import 'package:drift/drift.dart' as drift;
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
//import 'package:flutter/cupertino.dart';
import 'package:path/path.dart' as p;

part 'trading_database.g.dart';
part '../Dao/Accounts_dao_g.dart1';
part '../Dao/AccountsType_dao_g.dart1';
part '../Dao/AssetsTypes_dao_g.dart1';
part '../Dao/Assets_dao_g.dart1';
part '../Dao/Transactions_dao_g.dart1';

/// ================= 表定义 =================
//账户表
class Accounts extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text()();//账户名称
  drift.IntColumn get typeId => integer().references(AccountTypes, #id)();//账户类型id,账户类型（stock / future / cash / crypto 等）
  drift.TextColumn get currency => text().withDefault(const drift.Constant('CNY'))();//账户货币
  drift.RealColumn get balance => real().withDefault(const drift.Constant(0.0))();//账户金额
  drift.DateTimeColumn get createdAt => dateTime()(); // 插入时使用 Value(DateTime.now())//账户创建时间
}
//账户类型表
class AccountTypes extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}

//资产/标的表
class Assets extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get symbol => text()();//资产记号（代码）
  drift.TextColumn get name => text().nullable()();//账户名称
  drift.IntColumn get assetTypeId => integer().references(AssetsTypes, #id)();//资产类型,类型（stock, future, forex, crypto）
  drift.TextColumn get exchange => text().nullable()();//账户合约乘数
  drift.TextColumn get currency => text().withDefault(const drift.Constant('CNY'))();//账户货币
  drift.RealColumn get multiplier => real().withDefault(const drift.Constant(1.0))();
  drift.TextColumn get notes => text().nullable()();//备注
}
//资产类型表
class AssetsTypes extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
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
}

//进场状态表
class EntryConditions extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
//交易场所表
class Sessions extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}

//交易类型表
class TraderTypes extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}

//心情表
class Moods extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
  drift.TextColumn get iconName => text().nullable()();//图标名称
}

//side买卖方向表
class Sides extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text().nullable()();//名称
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}


//交易记录附件（暂不使用，备用）
class TransactionMedia extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.IntColumn get transactionId =>
      integer().references(Transactions, #id, onDelete: KeyAction.cascade)();//交易记录id
  drift.TextColumn get mediaType => text()();//附件类型
  drift.TextColumn get filePath => text()();//附件路径
  drift.TextColumn get note => text().nullable()();//文本
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
//交易记录备注表
class Remarks extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.IntColumn get transactionId =>
      integer().references(Transactions, #id, onDelete: KeyAction.cascade)();//交易记录id
  drift.TextColumn get remarksText => text().nullable()();//文本
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
//交易记录备注附件表
class RemarkMedia extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.IntColumn get remarkId =>
      integer().references(Remarks, #id, onDelete: KeyAction.cascade)();//备注id
  drift.TextColumn get mediaType => text()();//附件类型
  drift.TextColumn get filePath => text()();//附件路径
  drift.DateTimeColumn get createdAt => dateTime()();//创建时间
}
//标签表，标签记录以方便分析
class Tags extends drift.Table {
  drift.IntColumn get id => integer().autoIncrement()();
  drift.TextColumn get name => text()();//标签名称
  drift.TextColumn get color => text().nullable()();//标签颜色
}
//交易记录和标签关联表
class TransactionTags extends drift.Table {
  drift.IntColumn get transactionId => integer().references(Transactions, #id)();//交易记录id
  drift.IntColumn get tagId => integer().references(Tags, #id)();//标签id
  @override
  Set<drift.Column> get primaryKey => {transactionId, tagId};
}

class Settings extends drift.Table {
  drift.TextColumn get key => text()();
  drift.TextColumn get value => text().nullable()();
  @override
  Set<drift.Column> get primaryKey => {key};
}

/// ================= Drift 数据库类 =================

@DriftDatabase(
  tables: [
    Accounts,
    Assets,
    Transactions,
    TransactionMedia,
    Remarks,
    RemarkMedia,
    Tags,
    TransactionTags,
    Settings,
    AssetsTypes,
    EntryConditions,
    Sessions,
    TraderTypes,
    Moods,
    Sides
  ],
)
class TradingDatabase extends _$TradingDatabase {
  TradingDatabase({String? dbPath}) : super(_openConnection(dbPath));

  @override
  int get schemaVersion => 1;
/*

  // ---------- Accounts ----------
  Future<int> createAccount(String name,
      {String type = 'stock', String currency = 'CNY'}) {
    return into(accounts).insert(AccountsCompanion.insert(
        name: name, type: Value(type), currency: Value(currency), createdAt: DateTime.now()));
  }

  Future<List<Account>> getAllAccounts() => select(accounts).get();

  // ---------- Assets ----------
  Future<int> upsertAsset({
    required String symbol,
    String? name,
    String assetType = 'stock',
    double multiplier = 1.0,
    String? exchange,
    String currency = 'CNY',
  }) {
    return transaction(() async {
      final existing = await (select(assets)..where((a) => a.symbol.equals(symbol)))
          .getSingleOrNull();
      if (existing != null) {
        await (update(assets)..where((a) => a.id.equals(existing.id))).write(
          AssetsCompanion(
            name: Value(name ?? existing.name),
            assetType: Value(assetType),
            multiplier: Value(multiplier),
            exchange: Value(exchange ?? existing.exchange),
            currency: Value(currency),
          ),
        );
        return existing.id;
      } else {
        return into(assets).insert(AssetsCompanion.insert(
          symbol: symbol,
          name: Value(name),
          assetType: Value(assetType),
          multiplier: Value(multiplier),
          exchange: Value(exchange),
          currency: Value(currency),
        ));
      }
    });
  }

  Future<List<Asset>> getAllAssets() => select(assets).get();

  // ---------- Tags ----------
  Future<int> createTag(String name, {String? color}) {
    return into(tags)
        .insert(TagsCompanion.insert(name: name, color: Value(color)));
  }

  // ---------- Transactions ----------
  Future<int> insertTransactionWithExtras({
    required TransactionsCompanion tran,
    List<TransactionMediaCompanion>? mediaList,
    List<RemarksCompanion>? remarksList,
    List<int>? tagIds,
  }) {
    return transaction(()  async {
      final txId = await into(transactions).insert(tran);
      if (mediaList != null) {
        for (final m in mediaList) {
          await into(transactionMedia)
              .insert(m.copyWith(transactionId: Value(txId)));
        }
      }
      if (remarksList != null) {
        for (final r in remarksList) {
          final rid = await into(remarks).insert(
              r.copyWith(transactionId: Value(txId)));
          // Remark media 插入可通过单独 API
        }
      }
      if (tagIds != null) {
        for (final t in tagIds) {
          await into(transactionTags)
              .insert(TransactionTagsCompanion.insert(transactionId: txId, tagId: t));
        }
      }
      return txId;
    });
  }

  Future<int> addRemarkWithMedia({
    required int transactionId,
    String? text,
    List<RemarkMediaCompanion>? medias,
  }) {
    return transaction(() async {
      final rid = await into(remarks).insert(
          RemarksCompanion.insert(createdAt:DateTime.now(),transactionId: transactionId, remarksText: Value(text)));
      if (medias != null) {
        for (final m in medias) {
          await into(remarkMedia).insert(m.copyWith(remarkId: Value(rid)));
        }
      }
      return rid;
    });
  }

  Stream<List<Transaction>> watchTransactionsByDate(DateTime date) {
    final start = DateTime(date.year, date.month, date.day);
    final end = start.add(const Duration(days: 1));
    return (select(transactions)..where((t) => t.date.isBetweenValues(start, end)))
        .watch();
  }

  Future<Map<String, dynamic>> getTransactionWithExtras(int txId) async {
    final tx = await (select(transactions)..where((t) => t.id.equals(txId))).getSingle();
    final medias = await (select(transactionMedia)..where((m) => m.transactionId.equals(txId))).get();
    final rems = await (select(remarks)..where((r) => r.transactionId.equals(txId))).get();
    final remarkMedias = <int, List<RemarkMediaData>>{};
    for (final r in rems) {
      final rms = await (select(remarkMedia)..where((rm) => rm.remarkId.equals(r.id))).get();
      remarkMedias[r.id] = rms;
    }
    return {
      'transaction': tx,
      'media': medias,
      'remarks': rems,
      'remarkMedias': remarkMedias,
    };
  }

  Future<int> deleteTransaction(int txId) {
    return (delete(transactions)..where((t) => t.id.equals(txId))).go();
  }*/
}


/// ================= 数据库连接 =================

LazyDatabase _openConnection(String? dbPath) {
  return LazyDatabase(() async {
    final folder = dbPath ?? Directory.current.path;
    final file = File(p.join(folder, 'trading.db'));
    if (!await file.parent.exists()) {
      await file.parent.create(recursive: true);
    }
    print('Drift DB path: ${file.path}');
    return NativeDatabase(file);
  });
}
