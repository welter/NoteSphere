// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trading_database.dart';

// ignore_for_file: type=lint
class $AccountTypesTable extends AccountTypes
    with drift.TableInfo<$AccountTypesTable, AccountType> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountTypesTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'account_types';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<AccountType> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  AccountType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountType(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $AccountTypesTable createAlias(String alias) {
    return $AccountTypesTable(attachedDatabase, alias);
  }
}

class AccountType extends drift.DataClass
    implements drift.Insertable<AccountType> {
  final int id;
  final String? name;
  final DateTime createdAt;
  const AccountType({required this.id, this.name, required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  AccountTypesCompanion toCompanion(bool nullToAbsent) {
    return AccountTypesCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      createdAt: drift.Value(createdAt),
    );
  }

  factory AccountType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return AccountType(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  AccountType copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          DateTime? createdAt}) =>
      AccountType(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  AccountType copyWithCompanion(AccountTypesCompanion data) {
    return AccountType(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AccountType(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AccountType &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class AccountTypesCompanion extends drift.UpdateCompanion<AccountType> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<DateTime> createdAt;
  const AccountTypesCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  AccountTypesCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    required DateTime createdAt,
  }) : createdAt = drift.Value(createdAt);
  static drift.Insertable<AccountType> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AccountTypesCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<DateTime>? createdAt}) {
    return AccountTypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountTypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $CurrencysTable extends Currencys
    with drift.TableInfo<$CurrencysTable, Currency> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CurrencysTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'currencys';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<Currency> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Currency map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Currency(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $CurrencysTable createAlias(String alias) {
    return $CurrencysTable(attachedDatabase, alias);
  }
}

class Currency extends drift.DataClass implements drift.Insertable<Currency> {
  final int id;
  final String? name;
  final DateTime createdAt;
  const Currency({required this.id, this.name, required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  CurrencysCompanion toCompanion(bool nullToAbsent) {
    return CurrencysCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      createdAt: drift.Value(createdAt),
    );
  }

  factory Currency.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Currency(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Currency copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          DateTime? createdAt}) =>
      Currency(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  Currency copyWithCompanion(CurrencysCompanion data) {
    return Currency(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Currency(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Currency &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class CurrencysCompanion extends drift.UpdateCompanion<Currency> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<DateTime> createdAt;
  const CurrencysCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  CurrencysCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    required DateTime createdAt,
  }) : createdAt = drift.Value(createdAt);
  static drift.Insertable<Currency> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CurrencysCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<DateTime>? createdAt}) {
    return CurrencysCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CurrencysCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $AccountsTable extends Accounts
    with drift.TableInfo<$AccountsTable, Account> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountsTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _typeIdMeta =
      const drift.VerificationMeta('typeId');
  @override
  late final drift.GeneratedColumn<int> typeId = drift.GeneratedColumn<int>(
      'type_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES account_types (id)'));
  static const drift.VerificationMeta _currencyIdMeta =
      const drift.VerificationMeta('currencyId');
  @override
  late final drift.GeneratedColumn<int> currencyId = drift.GeneratedColumn<int>(
      'currency_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES currencys (id)'));
  static const drift.VerificationMeta _balanceMeta =
      const drift.VerificationMeta('balance');
  @override
  late final drift.GeneratedColumn<double> balance =
      drift.GeneratedColumn<double>('balance', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const drift.Constant(0.0));
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns =>
      [id, name, typeId, currencyId, balance, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'accounts';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<Account> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(_typeIdMeta,
          typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta));
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    if (data.containsKey('currency_id')) {
      context.handle(
          _currencyIdMeta,
          currencyId.isAcceptableOrUnknown(
              data['currency_id']!, _currencyIdMeta));
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Account map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Account(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      typeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type_id'])!,
      currencyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}currency_id'])!,
      balance: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}balance'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $AccountsTable createAlias(String alias) {
    return $AccountsTable(attachedDatabase, alias);
  }
}

class Account extends drift.DataClass implements drift.Insertable<Account> {
  final int id;
  final String name;
  final int typeId;
  final int currencyId;
  final double balance;
  final DateTime createdAt;
  const Account(
      {required this.id,
      required this.name,
      required this.typeId,
      required this.currencyId,
      required this.balance,
      required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    map['name'] = drift.Variable<String>(name);
    map['type_id'] = drift.Variable<int>(typeId);
    map['currency_id'] = drift.Variable<int>(currencyId);
    map['balance'] = drift.Variable<double>(balance);
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  AccountsCompanion toCompanion(bool nullToAbsent) {
    return AccountsCompanion(
      id: drift.Value(id),
      name: drift.Value(name),
      typeId: drift.Value(typeId),
      currencyId: drift.Value(currencyId),
      balance: drift.Value(balance),
      createdAt: drift.Value(createdAt),
    );
  }

  factory Account.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Account(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      typeId: serializer.fromJson<int>(json['typeId']),
      currencyId: serializer.fromJson<int>(json['currencyId']),
      balance: serializer.fromJson<double>(json['balance']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'typeId': serializer.toJson<int>(typeId),
      'currencyId': serializer.toJson<int>(currencyId),
      'balance': serializer.toJson<double>(balance),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Account copyWith(
          {int? id,
          String? name,
          int? typeId,
          int? currencyId,
          double? balance,
          DateTime? createdAt}) =>
      Account(
        id: id ?? this.id,
        name: name ?? this.name,
        typeId: typeId ?? this.typeId,
        currencyId: currencyId ?? this.currencyId,
        balance: balance ?? this.balance,
        createdAt: createdAt ?? this.createdAt,
      );
  Account copyWithCompanion(AccountsCompanion data) {
    return Account(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      typeId: data.typeId.present ? data.typeId.value : this.typeId,
      currencyId:
          data.currencyId.present ? data.currencyId.value : this.currencyId,
      balance: data.balance.present ? data.balance.value : this.balance,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Account(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('typeId: $typeId, ')
          ..write('currencyId: $currencyId, ')
          ..write('balance: $balance, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, typeId, currencyId, balance, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Account &&
          other.id == this.id &&
          other.name == this.name &&
          other.typeId == this.typeId &&
          other.currencyId == this.currencyId &&
          other.balance == this.balance &&
          other.createdAt == this.createdAt);
}

class AccountsCompanion extends drift.UpdateCompanion<Account> {
  final drift.Value<int> id;
  final drift.Value<String> name;
  final drift.Value<int> typeId;
  final drift.Value<int> currencyId;
  final drift.Value<double> balance;
  final drift.Value<DateTime> createdAt;
  const AccountsCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.typeId = const drift.Value.absent(),
    this.currencyId = const drift.Value.absent(),
    this.balance = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  AccountsCompanion.insert({
    this.id = const drift.Value.absent(),
    required String name,
    required int typeId,
    required int currencyId,
    this.balance = const drift.Value.absent(),
    required DateTime createdAt,
  })  : name = drift.Value(name),
        typeId = drift.Value(typeId),
        currencyId = drift.Value(currencyId),
        createdAt = drift.Value(createdAt);
  static drift.Insertable<Account> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<int>? typeId,
    drift.Expression<int>? currencyId,
    drift.Expression<double>? balance,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (typeId != null) 'type_id': typeId,
      if (currencyId != null) 'currency_id': currencyId,
      if (balance != null) 'balance': balance,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AccountsCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String>? name,
      drift.Value<int>? typeId,
      drift.Value<int>? currencyId,
      drift.Value<double>? balance,
      drift.Value<DateTime>? createdAt}) {
    return AccountsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      typeId: typeId ?? this.typeId,
      currencyId: currencyId ?? this.currencyId,
      balance: balance ?? this.balance,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (typeId.present) {
      map['type_id'] = drift.Variable<int>(typeId.value);
    }
    if (currencyId.present) {
      map['currency_id'] = drift.Variable<int>(currencyId.value);
    }
    if (balance.present) {
      map['balance'] = drift.Variable<double>(balance.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('typeId: $typeId, ')
          ..write('currencyId: $currencyId, ')
          ..write('balance: $balance, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $AssetsTypesTable extends AssetsTypes
    with drift.TableInfo<$AssetsTypesTable, AssetsType> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AssetsTypesTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'assets_types';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<AssetsType> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  AssetsType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AssetsType(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $AssetsTypesTable createAlias(String alias) {
    return $AssetsTypesTable(attachedDatabase, alias);
  }
}

class AssetsType extends drift.DataClass
    implements drift.Insertable<AssetsType> {
  final int id;
  final String? name;
  final DateTime createdAt;
  const AssetsType({required this.id, this.name, required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  AssetsTypesCompanion toCompanion(bool nullToAbsent) {
    return AssetsTypesCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      createdAt: drift.Value(createdAt),
    );
  }

  factory AssetsType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return AssetsType(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  AssetsType copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          DateTime? createdAt}) =>
      AssetsType(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  AssetsType copyWithCompanion(AssetsTypesCompanion data) {
    return AssetsType(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AssetsType(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AssetsType &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class AssetsTypesCompanion extends drift.UpdateCompanion<AssetsType> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<DateTime> createdAt;
  const AssetsTypesCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  AssetsTypesCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    required DateTime createdAt,
  }) : createdAt = drift.Value(createdAt);
  static drift.Insertable<AssetsType> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AssetsTypesCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<DateTime>? createdAt}) {
    return AssetsTypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssetsTypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $AssetsTable extends Assets with drift.TableInfo<$AssetsTable, Asset> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AssetsTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _symbolMeta =
      const drift.VerificationMeta('symbol');
  @override
  late final drift.GeneratedColumn<String> symbol =
      drift.GeneratedColumn<String>('symbol', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _assetTypeIdMeta =
      const drift.VerificationMeta('assetTypeId');
  @override
  late final drift.GeneratedColumn<int> assetTypeId =
      drift.GeneratedColumn<int>('asset_type_id', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES assets_types (id)'));
  static const drift.VerificationMeta _exchangeMeta =
      const drift.VerificationMeta('exchange');
  @override
  late final drift.GeneratedColumn<String> exchange =
      drift.GeneratedColumn<String>('exchange', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _currencyIdMeta =
      const drift.VerificationMeta('currencyId');
  @override
  late final drift.GeneratedColumn<int> currencyId = drift.GeneratedColumn<int>(
      'currency_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES currencys (id)'));
  static const drift.VerificationMeta _multiplierMeta =
      const drift.VerificationMeta('multiplier');
  @override
  late final drift.GeneratedColumn<double> multiplier =
      drift.GeneratedColumn<double>('multiplier', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const drift.Constant(1.0));
  static const drift.VerificationMeta _notesMeta =
      const drift.VerificationMeta('notes');
  @override
  late final drift.GeneratedColumn<String> notes =
      drift.GeneratedColumn<String>('notes', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<drift.GeneratedColumn> get $columns =>
      [id, symbol, name, assetTypeId, exchange, currencyId, multiplier, notes];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'assets';
  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Asset> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('asset_type_id')) {
      context.handle(
          _assetTypeIdMeta,
          assetTypeId.isAcceptableOrUnknown(
              data['asset_type_id']!, _assetTypeIdMeta));
    } else if (isInserting) {
      context.missing(_assetTypeIdMeta);
    }
    if (data.containsKey('exchange')) {
      context.handle(_exchangeMeta,
          exchange.isAcceptableOrUnknown(data['exchange']!, _exchangeMeta));
    }
    if (data.containsKey('currency_id')) {
      context.handle(
          _currencyIdMeta,
          currencyId.isAcceptableOrUnknown(
              data['currency_id']!, _currencyIdMeta));
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('multiplier')) {
      context.handle(
          _multiplierMeta,
          multiplier.isAcceptableOrUnknown(
              data['multiplier']!, _multiplierMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Asset map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Asset(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      symbol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      assetTypeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}asset_type_id'])!,
      exchange: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}exchange']),
      currencyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}currency_id'])!,
      multiplier: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}multiplier'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $AssetsTable createAlias(String alias) {
    return $AssetsTable(attachedDatabase, alias);
  }
}

class Asset extends drift.DataClass implements drift.Insertable<Asset> {
  final int id;
  final String symbol;
  final String? name;
  final int assetTypeId;
  final String? exchange;
  final int currencyId;
  final double multiplier;
  final String? notes;
  const Asset(
      {required this.id,
      required this.symbol,
      this.name,
      required this.assetTypeId,
      this.exchange,
      required this.currencyId,
      required this.multiplier,
      this.notes});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    map['symbol'] = drift.Variable<String>(symbol);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['asset_type_id'] = drift.Variable<int>(assetTypeId);
    if (!nullToAbsent || exchange != null) {
      map['exchange'] = drift.Variable<String>(exchange);
    }
    map['currency_id'] = drift.Variable<int>(currencyId);
    map['multiplier'] = drift.Variable<double>(multiplier);
    if (!nullToAbsent || notes != null) {
      map['notes'] = drift.Variable<String>(notes);
    }
    return map;
  }

  AssetsCompanion toCompanion(bool nullToAbsent) {
    return AssetsCompanion(
      id: drift.Value(id),
      symbol: drift.Value(symbol),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      assetTypeId: drift.Value(assetTypeId),
      exchange: exchange == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(exchange),
      currencyId: drift.Value(currencyId),
      multiplier: drift.Value(multiplier),
      notes: notes == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(notes),
    );
  }

  factory Asset.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Asset(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String?>(json['name']),
      assetTypeId: serializer.fromJson<int>(json['assetTypeId']),
      exchange: serializer.fromJson<String?>(json['exchange']),
      currencyId: serializer.fromJson<int>(json['currencyId']),
      multiplier: serializer.fromJson<double>(json['multiplier']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String?>(name),
      'assetTypeId': serializer.toJson<int>(assetTypeId),
      'exchange': serializer.toJson<String?>(exchange),
      'currencyId': serializer.toJson<int>(currencyId),
      'multiplier': serializer.toJson<double>(multiplier),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  Asset copyWith(
          {int? id,
          String? symbol,
          drift.Value<String?> name = const drift.Value.absent(),
          int? assetTypeId,
          drift.Value<String?> exchange = const drift.Value.absent(),
          int? currencyId,
          double? multiplier,
          drift.Value<String?> notes = const drift.Value.absent()}) =>
      Asset(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        name: name.present ? name.value : this.name,
        assetTypeId: assetTypeId ?? this.assetTypeId,
        exchange: exchange.present ? exchange.value : this.exchange,
        currencyId: currencyId ?? this.currencyId,
        multiplier: multiplier ?? this.multiplier,
        notes: notes.present ? notes.value : this.notes,
      );
  Asset copyWithCompanion(AssetsCompanion data) {
    return Asset(
      id: data.id.present ? data.id.value : this.id,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      name: data.name.present ? data.name.value : this.name,
      assetTypeId:
          data.assetTypeId.present ? data.assetTypeId.value : this.assetTypeId,
      exchange: data.exchange.present ? data.exchange.value : this.exchange,
      currencyId:
          data.currencyId.present ? data.currencyId.value : this.currencyId,
      multiplier:
          data.multiplier.present ? data.multiplier.value : this.multiplier,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Asset(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('assetTypeId: $assetTypeId, ')
          ..write('exchange: $exchange, ')
          ..write('currencyId: $currencyId, ')
          ..write('multiplier: $multiplier, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, symbol, name, assetTypeId, exchange, currencyId, multiplier, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Asset &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.assetTypeId == this.assetTypeId &&
          other.exchange == this.exchange &&
          other.currencyId == this.currencyId &&
          other.multiplier == this.multiplier &&
          other.notes == this.notes);
}

class AssetsCompanion extends drift.UpdateCompanion<Asset> {
  final drift.Value<int> id;
  final drift.Value<String> symbol;
  final drift.Value<String?> name;
  final drift.Value<int> assetTypeId;
  final drift.Value<String?> exchange;
  final drift.Value<int> currencyId;
  final drift.Value<double> multiplier;
  final drift.Value<String?> notes;
  const AssetsCompanion({
    this.id = const drift.Value.absent(),
    this.symbol = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.assetTypeId = const drift.Value.absent(),
    this.exchange = const drift.Value.absent(),
    this.currencyId = const drift.Value.absent(),
    this.multiplier = const drift.Value.absent(),
    this.notes = const drift.Value.absent(),
  });
  AssetsCompanion.insert({
    this.id = const drift.Value.absent(),
    required String symbol,
    this.name = const drift.Value.absent(),
    required int assetTypeId,
    this.exchange = const drift.Value.absent(),
    required int currencyId,
    this.multiplier = const drift.Value.absent(),
    this.notes = const drift.Value.absent(),
  })  : symbol = drift.Value(symbol),
        assetTypeId = drift.Value(assetTypeId),
        currencyId = drift.Value(currencyId);
  static drift.Insertable<Asset> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? symbol,
    drift.Expression<String>? name,
    drift.Expression<int>? assetTypeId,
    drift.Expression<String>? exchange,
    drift.Expression<int>? currencyId,
    drift.Expression<double>? multiplier,
    drift.Expression<String>? notes,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (name != null) 'name': name,
      if (assetTypeId != null) 'asset_type_id': assetTypeId,
      if (exchange != null) 'exchange': exchange,
      if (currencyId != null) 'currency_id': currencyId,
      if (multiplier != null) 'multiplier': multiplier,
      if (notes != null) 'notes': notes,
    });
  }

  AssetsCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String>? symbol,
      drift.Value<String?>? name,
      drift.Value<int>? assetTypeId,
      drift.Value<String?>? exchange,
      drift.Value<int>? currencyId,
      drift.Value<double>? multiplier,
      drift.Value<String?>? notes}) {
    return AssetsCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      assetTypeId: assetTypeId ?? this.assetTypeId,
      exchange: exchange ?? this.exchange,
      currencyId: currencyId ?? this.currencyId,
      multiplier: multiplier ?? this.multiplier,
      notes: notes ?? this.notes,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = drift.Variable<String>(symbol.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (assetTypeId.present) {
      map['asset_type_id'] = drift.Variable<int>(assetTypeId.value);
    }
    if (exchange.present) {
      map['exchange'] = drift.Variable<String>(exchange.value);
    }
    if (currencyId.present) {
      map['currency_id'] = drift.Variable<int>(currencyId.value);
    }
    if (multiplier.present) {
      map['multiplier'] = drift.Variable<double>(multiplier.value);
    }
    if (notes.present) {
      map['notes'] = drift.Variable<String>(notes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssetsCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('assetTypeId: $assetTypeId, ')
          ..write('exchange: $exchange, ')
          ..write('currencyId: $currencyId, ')
          ..write('multiplier: $multiplier, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }
}

class $SidesTable extends Sides with drift.TableInfo<$SidesTable, Side> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SidesTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sides';
  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Side> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Side map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Side(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $SidesTable createAlias(String alias) {
    return $SidesTable(attachedDatabase, alias);
  }
}

class Side extends drift.DataClass implements drift.Insertable<Side> {
  final int id;
  final String? name;
  final DateTime createdAt;
  const Side({required this.id, this.name, required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  SidesCompanion toCompanion(bool nullToAbsent) {
    return SidesCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      createdAt: drift.Value(createdAt),
    );
  }

  factory Side.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Side(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Side copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          DateTime? createdAt}) =>
      Side(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  Side copyWithCompanion(SidesCompanion data) {
    return Side(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Side(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Side &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class SidesCompanion extends drift.UpdateCompanion<Side> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<DateTime> createdAt;
  const SidesCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  SidesCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    required DateTime createdAt,
  }) : createdAt = drift.Value(createdAt);
  static drift.Insertable<Side> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  SidesCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<DateTime>? createdAt}) {
    return SidesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SidesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $EntryConditionsTable extends EntryConditions
    with drift.TableInfo<$EntryConditionsTable, EntryCondition> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EntryConditionsTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'entry_conditions';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<EntryCondition> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  EntryCondition map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EntryCondition(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $EntryConditionsTable createAlias(String alias) {
    return $EntryConditionsTable(attachedDatabase, alias);
  }
}

class EntryCondition extends drift.DataClass
    implements drift.Insertable<EntryCondition> {
  final int id;
  final String? name;
  final DateTime createdAt;
  const EntryCondition({required this.id, this.name, required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  EntryConditionsCompanion toCompanion(bool nullToAbsent) {
    return EntryConditionsCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      createdAt: drift.Value(createdAt),
    );
  }

  factory EntryCondition.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return EntryCondition(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  EntryCondition copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          DateTime? createdAt}) =>
      EntryCondition(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  EntryCondition copyWithCompanion(EntryConditionsCompanion data) {
    return EntryCondition(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EntryCondition(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EntryCondition &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class EntryConditionsCompanion extends drift.UpdateCompanion<EntryCondition> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<DateTime> createdAt;
  const EntryConditionsCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  EntryConditionsCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    required DateTime createdAt,
  }) : createdAt = drift.Value(createdAt);
  static drift.Insertable<EntryCondition> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  EntryConditionsCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<DateTime>? createdAt}) {
    return EntryConditionsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EntryConditionsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $SessionsTable extends Sessions
    with drift.TableInfo<$SessionsTable, Session> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SessionsTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sessions';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<Session> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Session map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Session(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $SessionsTable createAlias(String alias) {
    return $SessionsTable(attachedDatabase, alias);
  }
}

class Session extends drift.DataClass implements drift.Insertable<Session> {
  final int id;
  final String? name;
  final DateTime createdAt;
  const Session({required this.id, this.name, required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  SessionsCompanion toCompanion(bool nullToAbsent) {
    return SessionsCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      createdAt: drift.Value(createdAt),
    );
  }

  factory Session.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Session(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Session copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          DateTime? createdAt}) =>
      Session(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  Session copyWithCompanion(SessionsCompanion data) {
    return Session(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Session(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Session &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class SessionsCompanion extends drift.UpdateCompanion<Session> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<DateTime> createdAt;
  const SessionsCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  SessionsCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    required DateTime createdAt,
  }) : createdAt = drift.Value(createdAt);
  static drift.Insertable<Session> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  SessionsCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<DateTime>? createdAt}) {
    return SessionsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TraderTypesTable extends TraderTypes
    with drift.TableInfo<$TraderTypesTable, TraderType> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TraderTypesTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trader_types';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<TraderType> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  TraderType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TraderType(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $TraderTypesTable createAlias(String alias) {
    return $TraderTypesTable(attachedDatabase, alias);
  }
}

class TraderType extends drift.DataClass
    implements drift.Insertable<TraderType> {
  final int id;
  final String? name;
  final DateTime createdAt;
  const TraderType({required this.id, this.name, required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  TraderTypesCompanion toCompanion(bool nullToAbsent) {
    return TraderTypesCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      createdAt: drift.Value(createdAt),
    );
  }

  factory TraderType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return TraderType(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  TraderType copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          DateTime? createdAt}) =>
      TraderType(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  TraderType copyWithCompanion(TraderTypesCompanion data) {
    return TraderType(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TraderType(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TraderType &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class TraderTypesCompanion extends drift.UpdateCompanion<TraderType> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<DateTime> createdAt;
  const TraderTypesCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  TraderTypesCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    required DateTime createdAt,
  }) : createdAt = drift.Value(createdAt);
  static drift.Insertable<TraderType> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TraderTypesCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<DateTime>? createdAt}) {
    return TraderTypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TraderTypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $MoodsTable extends Moods with drift.TableInfo<$MoodsTable, Mood> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoodsTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const drift.VerificationMeta _iconNameMeta =
      const drift.VerificationMeta('iconName');
  @override
  late final drift.GeneratedColumn<String> iconName =
      drift.GeneratedColumn<String>('icon_name', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, createdAt, iconName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'moods';
  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Mood> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('icon_name')) {
      context.handle(_iconNameMeta,
          iconName.isAcceptableOrUnknown(data['icon_name']!, _iconNameMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Mood map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Mood(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      iconName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}icon_name']),
    );
  }

  @override
  $MoodsTable createAlias(String alias) {
    return $MoodsTable(attachedDatabase, alias);
  }
}

class Mood extends drift.DataClass implements drift.Insertable<Mood> {
  final int id;
  final String? name;
  final DateTime createdAt;
  final String? iconName;
  const Mood(
      {required this.id, this.name, required this.createdAt, this.iconName});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    if (!nullToAbsent || iconName != null) {
      map['icon_name'] = drift.Variable<String>(iconName);
    }
    return map;
  }

  MoodsCompanion toCompanion(bool nullToAbsent) {
    return MoodsCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      createdAt: drift.Value(createdAt),
      iconName: iconName == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(iconName),
    );
  }

  factory Mood.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Mood(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      iconName: serializer.fromJson<String?>(json['iconName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'iconName': serializer.toJson<String?>(iconName),
    };
  }

  Mood copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          DateTime? createdAt,
          drift.Value<String?> iconName = const drift.Value.absent()}) =>
      Mood(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        createdAt: createdAt ?? this.createdAt,
        iconName: iconName.present ? iconName.value : this.iconName,
      );
  Mood copyWithCompanion(MoodsCompanion data) {
    return Mood(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      iconName: data.iconName.present ? data.iconName.value : this.iconName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Mood(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt, ')
          ..write('iconName: $iconName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt, iconName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Mood &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt &&
          other.iconName == this.iconName);
}

class MoodsCompanion extends drift.UpdateCompanion<Mood> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<DateTime> createdAt;
  final drift.Value<String?> iconName;
  const MoodsCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
    this.iconName = const drift.Value.absent(),
  });
  MoodsCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    required DateTime createdAt,
    this.iconName = const drift.Value.absent(),
  }) : createdAt = drift.Value(createdAt);
  static drift.Insertable<Mood> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<DateTime>? createdAt,
    drift.Expression<String>? iconName,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
      if (iconName != null) 'icon_name': iconName,
    });
  }

  MoodsCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<DateTime>? createdAt,
      drift.Value<String?>? iconName}) {
    return MoodsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      iconName: iconName ?? this.iconName,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    if (iconName.present) {
      map['icon_name'] = drift.Variable<String>(iconName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoodsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt, ')
          ..write('iconName: $iconName')
          ..write(')'))
        .toString();
  }
}

class $TransactionsTable extends Transactions
    with drift.TableInfo<$TransactionsTable, Transaction> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionsTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _accountIdMeta =
      const drift.VerificationMeta('accountId');
  @override
  late final drift.GeneratedColumn<int> accountId = drift.GeneratedColumn<int>(
      'account_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES accounts (id)'));
  static const drift.VerificationMeta _assetIdMeta =
      const drift.VerificationMeta('assetId');
  @override
  late final drift.GeneratedColumn<int> assetId = drift.GeneratedColumn<int>(
      'asset_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES assets (id)'));
  static const drift.VerificationMeta _dateMeta =
      const drift.VerificationMeta('date');
  @override
  late final drift.GeneratedColumn<DateTime> date =
      drift.GeneratedColumn<DateTime>('date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const drift.VerificationMeta _sideIdMeta =
      const drift.VerificationMeta('sideId');
  @override
  late final drift.GeneratedColumn<int> sideId = drift.GeneratedColumn<int>(
      'side_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES sides (id)'));
  static const drift.VerificationMeta _quantityMeta =
      const drift.VerificationMeta('quantity');
  @override
  late final drift.GeneratedColumn<double> quantity =
      drift.GeneratedColumn<double>('quantity', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const drift.VerificationMeta _priceMeta =
      const drift.VerificationMeta('price');
  @override
  late final drift.GeneratedColumn<double> price =
      drift.GeneratedColumn<double>('price', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const drift.VerificationMeta _notionalMeta =
      const drift.VerificationMeta('notional');
  @override
  late final drift.GeneratedColumn<double> notional =
      drift.GeneratedColumn<double>('notional', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const drift.VerificationMeta _feeMeta =
      const drift.VerificationMeta('fee');
  @override
  late final drift.GeneratedColumn<double> fee = drift.GeneratedColumn<double>(
      'fee', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const drift.Constant(0.0));
  static const drift.VerificationMeta _taxMeta =
      const drift.VerificationMeta('tax');
  @override
  late final drift.GeneratedColumn<double> tax = drift.GeneratedColumn<double>(
      'tax', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const drift.Constant(0.0));
  static const drift.VerificationMeta _reasonMeta =
      const drift.VerificationMeta('reason');
  @override
  late final drift.GeneratedColumn<String> reason =
      drift.GeneratedColumn<String>('reason', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _entryConditionIdMeta =
      const drift.VerificationMeta('entryConditionId');
  @override
  late final drift.GeneratedColumn<int> entryConditionId =
      drift.GeneratedColumn<int>('entry_condition_id', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES entry_conditions (id)'));
  static const drift.VerificationMeta _sessionIdMeta =
      const drift.VerificationMeta('sessionId');
  @override
  late final drift.GeneratedColumn<int> sessionId = drift.GeneratedColumn<int>(
      'session_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES sessions (id)'));
  static const drift.VerificationMeta _traderTypeIdMeta =
      const drift.VerificationMeta('traderTypeId');
  @override
  late final drift.GeneratedColumn<int> traderTypeId =
      drift.GeneratedColumn<int>('trader_type_id', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES trader_types (id)'));
  static const drift.VerificationMeta _stopLossMeta =
      const drift.VerificationMeta('stopLoss');
  @override
  late final drift.GeneratedColumn<double> stopLoss =
      drift.GeneratedColumn<double>('stop_loss', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const drift.VerificationMeta _exitPriceMeta =
      const drift.VerificationMeta('exitPrice');
  @override
  late final drift.GeneratedColumn<double> exitPrice =
      drift.GeneratedColumn<double>('exit_price', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const drift.VerificationMeta _moodIdMeta =
      const drift.VerificationMeta('moodId');
  @override
  late final drift.GeneratedColumn<int> moodId = drift.GeneratedColumn<int>(
      'mood_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES moods (id)'));
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns => [
        id,
        accountId,
        assetId,
        date,
        sideId,
        quantity,
        price,
        notional,
        fee,
        tax,
        reason,
        entryConditionId,
        sessionId,
        traderTypeId,
        stopLoss,
        exitPrice,
        moodId,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transactions';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<Transaction> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('account_id')) {
      context.handle(_accountIdMeta,
          accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta));
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('asset_id')) {
      context.handle(_assetIdMeta,
          assetId.isAcceptableOrUnknown(data['asset_id']!, _assetIdMeta));
    } else if (isInserting) {
      context.missing(_assetIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('side_id')) {
      context.handle(_sideIdMeta,
          sideId.isAcceptableOrUnknown(data['side_id']!, _sideIdMeta));
    } else if (isInserting) {
      context.missing(_sideIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('notional')) {
      context.handle(_notionalMeta,
          notional.isAcceptableOrUnknown(data['notional']!, _notionalMeta));
    }
    if (data.containsKey('fee')) {
      context.handle(
          _feeMeta, fee.isAcceptableOrUnknown(data['fee']!, _feeMeta));
    }
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    if (data.containsKey('reason')) {
      context.handle(_reasonMeta,
          reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta));
    }
    if (data.containsKey('entry_condition_id')) {
      context.handle(
          _entryConditionIdMeta,
          entryConditionId.isAcceptableOrUnknown(
              data['entry_condition_id']!, _entryConditionIdMeta));
    } else if (isInserting) {
      context.missing(_entryConditionIdMeta);
    }
    if (data.containsKey('session_id')) {
      context.handle(_sessionIdMeta,
          sessionId.isAcceptableOrUnknown(data['session_id']!, _sessionIdMeta));
    } else if (isInserting) {
      context.missing(_sessionIdMeta);
    }
    if (data.containsKey('trader_type_id')) {
      context.handle(
          _traderTypeIdMeta,
          traderTypeId.isAcceptableOrUnknown(
              data['trader_type_id']!, _traderTypeIdMeta));
    } else if (isInserting) {
      context.missing(_traderTypeIdMeta);
    }
    if (data.containsKey('stop_loss')) {
      context.handle(_stopLossMeta,
          stopLoss.isAcceptableOrUnknown(data['stop_loss']!, _stopLossMeta));
    }
    if (data.containsKey('exit_price')) {
      context.handle(_exitPriceMeta,
          exitPrice.isAcceptableOrUnknown(data['exit_price']!, _exitPriceMeta));
    }
    if (data.containsKey('mood_id')) {
      context.handle(_moodIdMeta,
          moodId.isAcceptableOrUnknown(data['mood_id']!, _moodIdMeta));
    } else if (isInserting) {
      context.missing(_moodIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Transaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Transaction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      accountId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}account_id'])!,
      assetId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}asset_id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      sideId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}side_id'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      notional: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}notional']),
      fee: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}fee'])!,
      tax: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax'])!,
      reason: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reason']),
      entryConditionId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}entry_condition_id'])!,
      sessionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}session_id'])!,
      traderTypeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}trader_type_id'])!,
      stopLoss: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}stop_loss']),
      exitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}exit_price']),
      moodId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mood_id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $TransactionsTable createAlias(String alias) {
    return $TransactionsTable(attachedDatabase, alias);
  }
}

class Transaction extends drift.DataClass
    implements drift.Insertable<Transaction> {
  final int id;
  final int accountId;
  final int assetId;
  final DateTime date;
  final int sideId;
  final double quantity;
  final double price;
  final double? notional;
  final double fee;
  final double tax;
  final String? reason;
  final int entryConditionId;
  final int sessionId;
  final int traderTypeId;
  final double? stopLoss;
  final double? exitPrice;
  final int moodId;
  final DateTime createdAt;
  const Transaction(
      {required this.id,
      required this.accountId,
      required this.assetId,
      required this.date,
      required this.sideId,
      required this.quantity,
      required this.price,
      this.notional,
      required this.fee,
      required this.tax,
      this.reason,
      required this.entryConditionId,
      required this.sessionId,
      required this.traderTypeId,
      this.stopLoss,
      this.exitPrice,
      required this.moodId,
      required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    map['account_id'] = drift.Variable<int>(accountId);
    map['asset_id'] = drift.Variable<int>(assetId);
    map['date'] = drift.Variable<DateTime>(date);
    map['side_id'] = drift.Variable<int>(sideId);
    map['quantity'] = drift.Variable<double>(quantity);
    map['price'] = drift.Variable<double>(price);
    if (!nullToAbsent || notional != null) {
      map['notional'] = drift.Variable<double>(notional);
    }
    map['fee'] = drift.Variable<double>(fee);
    map['tax'] = drift.Variable<double>(tax);
    if (!nullToAbsent || reason != null) {
      map['reason'] = drift.Variable<String>(reason);
    }
    map['entry_condition_id'] = drift.Variable<int>(entryConditionId);
    map['session_id'] = drift.Variable<int>(sessionId);
    map['trader_type_id'] = drift.Variable<int>(traderTypeId);
    if (!nullToAbsent || stopLoss != null) {
      map['stop_loss'] = drift.Variable<double>(stopLoss);
    }
    if (!nullToAbsent || exitPrice != null) {
      map['exit_price'] = drift.Variable<double>(exitPrice);
    }
    map['mood_id'] = drift.Variable<int>(moodId);
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  TransactionsCompanion toCompanion(bool nullToAbsent) {
    return TransactionsCompanion(
      id: drift.Value(id),
      accountId: drift.Value(accountId),
      assetId: drift.Value(assetId),
      date: drift.Value(date),
      sideId: drift.Value(sideId),
      quantity: drift.Value(quantity),
      price: drift.Value(price),
      notional: notional == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(notional),
      fee: drift.Value(fee),
      tax: drift.Value(tax),
      reason: reason == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(reason),
      entryConditionId: drift.Value(entryConditionId),
      sessionId: drift.Value(sessionId),
      traderTypeId: drift.Value(traderTypeId),
      stopLoss: stopLoss == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(stopLoss),
      exitPrice: exitPrice == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(exitPrice),
      moodId: drift.Value(moodId),
      createdAt: drift.Value(createdAt),
    );
  }

  factory Transaction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Transaction(
      id: serializer.fromJson<int>(json['id']),
      accountId: serializer.fromJson<int>(json['accountId']),
      assetId: serializer.fromJson<int>(json['assetId']),
      date: serializer.fromJson<DateTime>(json['date']),
      sideId: serializer.fromJson<int>(json['sideId']),
      quantity: serializer.fromJson<double>(json['quantity']),
      price: serializer.fromJson<double>(json['price']),
      notional: serializer.fromJson<double?>(json['notional']),
      fee: serializer.fromJson<double>(json['fee']),
      tax: serializer.fromJson<double>(json['tax']),
      reason: serializer.fromJson<String?>(json['reason']),
      entryConditionId: serializer.fromJson<int>(json['entryConditionId']),
      sessionId: serializer.fromJson<int>(json['sessionId']),
      traderTypeId: serializer.fromJson<int>(json['traderTypeId']),
      stopLoss: serializer.fromJson<double?>(json['stopLoss']),
      exitPrice: serializer.fromJson<double?>(json['exitPrice']),
      moodId: serializer.fromJson<int>(json['moodId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'accountId': serializer.toJson<int>(accountId),
      'assetId': serializer.toJson<int>(assetId),
      'date': serializer.toJson<DateTime>(date),
      'sideId': serializer.toJson<int>(sideId),
      'quantity': serializer.toJson<double>(quantity),
      'price': serializer.toJson<double>(price),
      'notional': serializer.toJson<double?>(notional),
      'fee': serializer.toJson<double>(fee),
      'tax': serializer.toJson<double>(tax),
      'reason': serializer.toJson<String?>(reason),
      'entryConditionId': serializer.toJson<int>(entryConditionId),
      'sessionId': serializer.toJson<int>(sessionId),
      'traderTypeId': serializer.toJson<int>(traderTypeId),
      'stopLoss': serializer.toJson<double?>(stopLoss),
      'exitPrice': serializer.toJson<double?>(exitPrice),
      'moodId': serializer.toJson<int>(moodId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Transaction copyWith(
          {int? id,
          int? accountId,
          int? assetId,
          DateTime? date,
          int? sideId,
          double? quantity,
          double? price,
          drift.Value<double?> notional = const drift.Value.absent(),
          double? fee,
          double? tax,
          drift.Value<String?> reason = const drift.Value.absent(),
          int? entryConditionId,
          int? sessionId,
          int? traderTypeId,
          drift.Value<double?> stopLoss = const drift.Value.absent(),
          drift.Value<double?> exitPrice = const drift.Value.absent(),
          int? moodId,
          DateTime? createdAt}) =>
      Transaction(
        id: id ?? this.id,
        accountId: accountId ?? this.accountId,
        assetId: assetId ?? this.assetId,
        date: date ?? this.date,
        sideId: sideId ?? this.sideId,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        notional: notional.present ? notional.value : this.notional,
        fee: fee ?? this.fee,
        tax: tax ?? this.tax,
        reason: reason.present ? reason.value : this.reason,
        entryConditionId: entryConditionId ?? this.entryConditionId,
        sessionId: sessionId ?? this.sessionId,
        traderTypeId: traderTypeId ?? this.traderTypeId,
        stopLoss: stopLoss.present ? stopLoss.value : this.stopLoss,
        exitPrice: exitPrice.present ? exitPrice.value : this.exitPrice,
        moodId: moodId ?? this.moodId,
        createdAt: createdAt ?? this.createdAt,
      );
  Transaction copyWithCompanion(TransactionsCompanion data) {
    return Transaction(
      id: data.id.present ? data.id.value : this.id,
      accountId: data.accountId.present ? data.accountId.value : this.accountId,
      assetId: data.assetId.present ? data.assetId.value : this.assetId,
      date: data.date.present ? data.date.value : this.date,
      sideId: data.sideId.present ? data.sideId.value : this.sideId,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      price: data.price.present ? data.price.value : this.price,
      notional: data.notional.present ? data.notional.value : this.notional,
      fee: data.fee.present ? data.fee.value : this.fee,
      tax: data.tax.present ? data.tax.value : this.tax,
      reason: data.reason.present ? data.reason.value : this.reason,
      entryConditionId: data.entryConditionId.present
          ? data.entryConditionId.value
          : this.entryConditionId,
      sessionId: data.sessionId.present ? data.sessionId.value : this.sessionId,
      traderTypeId: data.traderTypeId.present
          ? data.traderTypeId.value
          : this.traderTypeId,
      stopLoss: data.stopLoss.present ? data.stopLoss.value : this.stopLoss,
      exitPrice: data.exitPrice.present ? data.exitPrice.value : this.exitPrice,
      moodId: data.moodId.present ? data.moodId.value : this.moodId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Transaction(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('assetId: $assetId, ')
          ..write('date: $date, ')
          ..write('sideId: $sideId, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price, ')
          ..write('notional: $notional, ')
          ..write('fee: $fee, ')
          ..write('tax: $tax, ')
          ..write('reason: $reason, ')
          ..write('entryConditionId: $entryConditionId, ')
          ..write('sessionId: $sessionId, ')
          ..write('traderTypeId: $traderTypeId, ')
          ..write('stopLoss: $stopLoss, ')
          ..write('exitPrice: $exitPrice, ')
          ..write('moodId: $moodId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      accountId,
      assetId,
      date,
      sideId,
      quantity,
      price,
      notional,
      fee,
      tax,
      reason,
      entryConditionId,
      sessionId,
      traderTypeId,
      stopLoss,
      exitPrice,
      moodId,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Transaction &&
          other.id == this.id &&
          other.accountId == this.accountId &&
          other.assetId == this.assetId &&
          other.date == this.date &&
          other.sideId == this.sideId &&
          other.quantity == this.quantity &&
          other.price == this.price &&
          other.notional == this.notional &&
          other.fee == this.fee &&
          other.tax == this.tax &&
          other.reason == this.reason &&
          other.entryConditionId == this.entryConditionId &&
          other.sessionId == this.sessionId &&
          other.traderTypeId == this.traderTypeId &&
          other.stopLoss == this.stopLoss &&
          other.exitPrice == this.exitPrice &&
          other.moodId == this.moodId &&
          other.createdAt == this.createdAt);
}

class TransactionsCompanion extends drift.UpdateCompanion<Transaction> {
  final drift.Value<int> id;
  final drift.Value<int> accountId;
  final drift.Value<int> assetId;
  final drift.Value<DateTime> date;
  final drift.Value<int> sideId;
  final drift.Value<double> quantity;
  final drift.Value<double> price;
  final drift.Value<double?> notional;
  final drift.Value<double> fee;
  final drift.Value<double> tax;
  final drift.Value<String?> reason;
  final drift.Value<int> entryConditionId;
  final drift.Value<int> sessionId;
  final drift.Value<int> traderTypeId;
  final drift.Value<double?> stopLoss;
  final drift.Value<double?> exitPrice;
  final drift.Value<int> moodId;
  final drift.Value<DateTime> createdAt;
  const TransactionsCompanion({
    this.id = const drift.Value.absent(),
    this.accountId = const drift.Value.absent(),
    this.assetId = const drift.Value.absent(),
    this.date = const drift.Value.absent(),
    this.sideId = const drift.Value.absent(),
    this.quantity = const drift.Value.absent(),
    this.price = const drift.Value.absent(),
    this.notional = const drift.Value.absent(),
    this.fee = const drift.Value.absent(),
    this.tax = const drift.Value.absent(),
    this.reason = const drift.Value.absent(),
    this.entryConditionId = const drift.Value.absent(),
    this.sessionId = const drift.Value.absent(),
    this.traderTypeId = const drift.Value.absent(),
    this.stopLoss = const drift.Value.absent(),
    this.exitPrice = const drift.Value.absent(),
    this.moodId = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  TransactionsCompanion.insert({
    this.id = const drift.Value.absent(),
    required int accountId,
    required int assetId,
    required DateTime date,
    required int sideId,
    required double quantity,
    required double price,
    this.notional = const drift.Value.absent(),
    this.fee = const drift.Value.absent(),
    this.tax = const drift.Value.absent(),
    this.reason = const drift.Value.absent(),
    required int entryConditionId,
    required int sessionId,
    required int traderTypeId,
    this.stopLoss = const drift.Value.absent(),
    this.exitPrice = const drift.Value.absent(),
    required int moodId,
    required DateTime createdAt,
  })  : accountId = drift.Value(accountId),
        assetId = drift.Value(assetId),
        date = drift.Value(date),
        sideId = drift.Value(sideId),
        quantity = drift.Value(quantity),
        price = drift.Value(price),
        entryConditionId = drift.Value(entryConditionId),
        sessionId = drift.Value(sessionId),
        traderTypeId = drift.Value(traderTypeId),
        moodId = drift.Value(moodId),
        createdAt = drift.Value(createdAt);
  static drift.Insertable<Transaction> custom({
    drift.Expression<int>? id,
    drift.Expression<int>? accountId,
    drift.Expression<int>? assetId,
    drift.Expression<DateTime>? date,
    drift.Expression<int>? sideId,
    drift.Expression<double>? quantity,
    drift.Expression<double>? price,
    drift.Expression<double>? notional,
    drift.Expression<double>? fee,
    drift.Expression<double>? tax,
    drift.Expression<String>? reason,
    drift.Expression<int>? entryConditionId,
    drift.Expression<int>? sessionId,
    drift.Expression<int>? traderTypeId,
    drift.Expression<double>? stopLoss,
    drift.Expression<double>? exitPrice,
    drift.Expression<int>? moodId,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (accountId != null) 'account_id': accountId,
      if (assetId != null) 'asset_id': assetId,
      if (date != null) 'date': date,
      if (sideId != null) 'side_id': sideId,
      if (quantity != null) 'quantity': quantity,
      if (price != null) 'price': price,
      if (notional != null) 'notional': notional,
      if (fee != null) 'fee': fee,
      if (tax != null) 'tax': tax,
      if (reason != null) 'reason': reason,
      if (entryConditionId != null) 'entry_condition_id': entryConditionId,
      if (sessionId != null) 'session_id': sessionId,
      if (traderTypeId != null) 'trader_type_id': traderTypeId,
      if (stopLoss != null) 'stop_loss': stopLoss,
      if (exitPrice != null) 'exit_price': exitPrice,
      if (moodId != null) 'mood_id': moodId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TransactionsCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<int>? accountId,
      drift.Value<int>? assetId,
      drift.Value<DateTime>? date,
      drift.Value<int>? sideId,
      drift.Value<double>? quantity,
      drift.Value<double>? price,
      drift.Value<double?>? notional,
      drift.Value<double>? fee,
      drift.Value<double>? tax,
      drift.Value<String?>? reason,
      drift.Value<int>? entryConditionId,
      drift.Value<int>? sessionId,
      drift.Value<int>? traderTypeId,
      drift.Value<double?>? stopLoss,
      drift.Value<double?>? exitPrice,
      drift.Value<int>? moodId,
      drift.Value<DateTime>? createdAt}) {
    return TransactionsCompanion(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      assetId: assetId ?? this.assetId,
      date: date ?? this.date,
      sideId: sideId ?? this.sideId,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      notional: notional ?? this.notional,
      fee: fee ?? this.fee,
      tax: tax ?? this.tax,
      reason: reason ?? this.reason,
      entryConditionId: entryConditionId ?? this.entryConditionId,
      sessionId: sessionId ?? this.sessionId,
      traderTypeId: traderTypeId ?? this.traderTypeId,
      stopLoss: stopLoss ?? this.stopLoss,
      exitPrice: exitPrice ?? this.exitPrice,
      moodId: moodId ?? this.moodId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (accountId.present) {
      map['account_id'] = drift.Variable<int>(accountId.value);
    }
    if (assetId.present) {
      map['asset_id'] = drift.Variable<int>(assetId.value);
    }
    if (date.present) {
      map['date'] = drift.Variable<DateTime>(date.value);
    }
    if (sideId.present) {
      map['side_id'] = drift.Variable<int>(sideId.value);
    }
    if (quantity.present) {
      map['quantity'] = drift.Variable<double>(quantity.value);
    }
    if (price.present) {
      map['price'] = drift.Variable<double>(price.value);
    }
    if (notional.present) {
      map['notional'] = drift.Variable<double>(notional.value);
    }
    if (fee.present) {
      map['fee'] = drift.Variable<double>(fee.value);
    }
    if (tax.present) {
      map['tax'] = drift.Variable<double>(tax.value);
    }
    if (reason.present) {
      map['reason'] = drift.Variable<String>(reason.value);
    }
    if (entryConditionId.present) {
      map['entry_condition_id'] = drift.Variable<int>(entryConditionId.value);
    }
    if (sessionId.present) {
      map['session_id'] = drift.Variable<int>(sessionId.value);
    }
    if (traderTypeId.present) {
      map['trader_type_id'] = drift.Variable<int>(traderTypeId.value);
    }
    if (stopLoss.present) {
      map['stop_loss'] = drift.Variable<double>(stopLoss.value);
    }
    if (exitPrice.present) {
      map['exit_price'] = drift.Variable<double>(exitPrice.value);
    }
    if (moodId.present) {
      map['mood_id'] = drift.Variable<int>(moodId.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsCompanion(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('assetId: $assetId, ')
          ..write('date: $date, ')
          ..write('sideId: $sideId, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price, ')
          ..write('notional: $notional, ')
          ..write('fee: $fee, ')
          ..write('tax: $tax, ')
          ..write('reason: $reason, ')
          ..write('entryConditionId: $entryConditionId, ')
          ..write('sessionId: $sessionId, ')
          ..write('traderTypeId: $traderTypeId, ')
          ..write('stopLoss: $stopLoss, ')
          ..write('exitPrice: $exitPrice, ')
          ..write('moodId: $moodId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TransactionMediaTable extends TransactionMedia
    with drift.TableInfo<$TransactionMediaTable, TransactionMediaData> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionMediaTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _transactionIdMeta =
      const drift.VerificationMeta('transactionId');
  @override
  late final drift.GeneratedColumn<int> transactionId =
      drift.GeneratedColumn<int>('transaction_id', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES transactions (id) ON DELETE CASCADE'));
  static const drift.VerificationMeta _mediaTypeMeta =
      const drift.VerificationMeta('mediaType');
  @override
  late final drift.GeneratedColumn<String> mediaType =
      drift.GeneratedColumn<String>('media_type', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _filePathMeta =
      const drift.VerificationMeta('filePath');
  @override
  late final drift.GeneratedColumn<String> filePath =
      drift.GeneratedColumn<String>('file_path', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _noteMeta =
      const drift.VerificationMeta('note');
  @override
  late final drift.GeneratedColumn<String> note = drift.GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns =>
      [id, transactionId, mediaType, filePath, note, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction_media';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<TransactionMediaData> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('transaction_id')) {
      context.handle(
          _transactionIdMeta,
          transactionId.isAcceptableOrUnknown(
              data['transaction_id']!, _transactionIdMeta));
    } else if (isInserting) {
      context.missing(_transactionIdMeta);
    }
    if (data.containsKey('media_type')) {
      context.handle(_mediaTypeMeta,
          mediaType.isAcceptableOrUnknown(data['media_type']!, _mediaTypeMeta));
    } else if (isInserting) {
      context.missing(_mediaTypeMeta);
    }
    if (data.containsKey('file_path')) {
      context.handle(_filePathMeta,
          filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta));
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionMediaData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionMediaData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      transactionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}transaction_id'])!,
      mediaType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}media_type'])!,
      filePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_path'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $TransactionMediaTable createAlias(String alias) {
    return $TransactionMediaTable(attachedDatabase, alias);
  }
}

class TransactionMediaData extends drift.DataClass
    implements drift.Insertable<TransactionMediaData> {
  final int id;
  final int transactionId;
  final String mediaType;
  final String filePath;
  final String? note;
  final DateTime createdAt;
  const TransactionMediaData(
      {required this.id,
      required this.transactionId,
      required this.mediaType,
      required this.filePath,
      this.note,
      required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    map['transaction_id'] = drift.Variable<int>(transactionId);
    map['media_type'] = drift.Variable<String>(mediaType);
    map['file_path'] = drift.Variable<String>(filePath);
    if (!nullToAbsent || note != null) {
      map['note'] = drift.Variable<String>(note);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  TransactionMediaCompanion toCompanion(bool nullToAbsent) {
    return TransactionMediaCompanion(
      id: drift.Value(id),
      transactionId: drift.Value(transactionId),
      mediaType: drift.Value(mediaType),
      filePath: drift.Value(filePath),
      note: note == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(note),
      createdAt: drift.Value(createdAt),
    );
  }

  factory TransactionMediaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return TransactionMediaData(
      id: serializer.fromJson<int>(json['id']),
      transactionId: serializer.fromJson<int>(json['transactionId']),
      mediaType: serializer.fromJson<String>(json['mediaType']),
      filePath: serializer.fromJson<String>(json['filePath']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'transactionId': serializer.toJson<int>(transactionId),
      'mediaType': serializer.toJson<String>(mediaType),
      'filePath': serializer.toJson<String>(filePath),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  TransactionMediaData copyWith(
          {int? id,
          int? transactionId,
          String? mediaType,
          String? filePath,
          drift.Value<String?> note = const drift.Value.absent(),
          DateTime? createdAt}) =>
      TransactionMediaData(
        id: id ?? this.id,
        transactionId: transactionId ?? this.transactionId,
        mediaType: mediaType ?? this.mediaType,
        filePath: filePath ?? this.filePath,
        note: note.present ? note.value : this.note,
        createdAt: createdAt ?? this.createdAt,
      );
  TransactionMediaData copyWithCompanion(TransactionMediaCompanion data) {
    return TransactionMediaData(
      id: data.id.present ? data.id.value : this.id,
      transactionId: data.transactionId.present
          ? data.transactionId.value
          : this.transactionId,
      mediaType: data.mediaType.present ? data.mediaType.value : this.mediaType,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionMediaData(')
          ..write('id: $id, ')
          ..write('transactionId: $transactionId, ')
          ..write('mediaType: $mediaType, ')
          ..write('filePath: $filePath, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, transactionId, mediaType, filePath, note, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionMediaData &&
          other.id == this.id &&
          other.transactionId == this.transactionId &&
          other.mediaType == this.mediaType &&
          other.filePath == this.filePath &&
          other.note == this.note &&
          other.createdAt == this.createdAt);
}

class TransactionMediaCompanion
    extends drift.UpdateCompanion<TransactionMediaData> {
  final drift.Value<int> id;
  final drift.Value<int> transactionId;
  final drift.Value<String> mediaType;
  final drift.Value<String> filePath;
  final drift.Value<String?> note;
  final drift.Value<DateTime> createdAt;
  const TransactionMediaCompanion({
    this.id = const drift.Value.absent(),
    this.transactionId = const drift.Value.absent(),
    this.mediaType = const drift.Value.absent(),
    this.filePath = const drift.Value.absent(),
    this.note = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  TransactionMediaCompanion.insert({
    this.id = const drift.Value.absent(),
    required int transactionId,
    required String mediaType,
    required String filePath,
    this.note = const drift.Value.absent(),
    required DateTime createdAt,
  })  : transactionId = drift.Value(transactionId),
        mediaType = drift.Value(mediaType),
        filePath = drift.Value(filePath),
        createdAt = drift.Value(createdAt);
  static drift.Insertable<TransactionMediaData> custom({
    drift.Expression<int>? id,
    drift.Expression<int>? transactionId,
    drift.Expression<String>? mediaType,
    drift.Expression<String>? filePath,
    drift.Expression<String>? note,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (transactionId != null) 'transaction_id': transactionId,
      if (mediaType != null) 'media_type': mediaType,
      if (filePath != null) 'file_path': filePath,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TransactionMediaCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<int>? transactionId,
      drift.Value<String>? mediaType,
      drift.Value<String>? filePath,
      drift.Value<String?>? note,
      drift.Value<DateTime>? createdAt}) {
    return TransactionMediaCompanion(
      id: id ?? this.id,
      transactionId: transactionId ?? this.transactionId,
      mediaType: mediaType ?? this.mediaType,
      filePath: filePath ?? this.filePath,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (transactionId.present) {
      map['transaction_id'] = drift.Variable<int>(transactionId.value);
    }
    if (mediaType.present) {
      map['media_type'] = drift.Variable<String>(mediaType.value);
    }
    if (filePath.present) {
      map['file_path'] = drift.Variable<String>(filePath.value);
    }
    if (note.present) {
      map['note'] = drift.Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionMediaCompanion(')
          ..write('id: $id, ')
          ..write('transactionId: $transactionId, ')
          ..write('mediaType: $mediaType, ')
          ..write('filePath: $filePath, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $RemarksTable extends Remarks
    with drift.TableInfo<$RemarksTable, Remark> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RemarksTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _transactionIdMeta =
      const drift.VerificationMeta('transactionId');
  @override
  late final drift.GeneratedColumn<int> transactionId =
      drift.GeneratedColumn<int>('transaction_id', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES transactions (id) ON DELETE CASCADE'));
  static const drift.VerificationMeta _remarksTextMeta =
      const drift.VerificationMeta('remarksText');
  @override
  late final drift.GeneratedColumn<String> remarksText =
      drift.GeneratedColumn<String>('remarks_text', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns =>
      [id, transactionId, remarksText, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'remarks';
  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Remark> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('transaction_id')) {
      context.handle(
          _transactionIdMeta,
          transactionId.isAcceptableOrUnknown(
              data['transaction_id']!, _transactionIdMeta));
    } else if (isInserting) {
      context.missing(_transactionIdMeta);
    }
    if (data.containsKey('remarks_text')) {
      context.handle(
          _remarksTextMeta,
          remarksText.isAcceptableOrUnknown(
              data['remarks_text']!, _remarksTextMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Remark map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Remark(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      transactionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}transaction_id'])!,
      remarksText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remarks_text']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $RemarksTable createAlias(String alias) {
    return $RemarksTable(attachedDatabase, alias);
  }
}

class Remark extends drift.DataClass implements drift.Insertable<Remark> {
  final int id;
  final int transactionId;
  final String? remarksText;
  final DateTime createdAt;
  const Remark(
      {required this.id,
      required this.transactionId,
      this.remarksText,
      required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    map['transaction_id'] = drift.Variable<int>(transactionId);
    if (!nullToAbsent || remarksText != null) {
      map['remarks_text'] = drift.Variable<String>(remarksText);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  RemarksCompanion toCompanion(bool nullToAbsent) {
    return RemarksCompanion(
      id: drift.Value(id),
      transactionId: drift.Value(transactionId),
      remarksText: remarksText == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(remarksText),
      createdAt: drift.Value(createdAt),
    );
  }

  factory Remark.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Remark(
      id: serializer.fromJson<int>(json['id']),
      transactionId: serializer.fromJson<int>(json['transactionId']),
      remarksText: serializer.fromJson<String?>(json['remarksText']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'transactionId': serializer.toJson<int>(transactionId),
      'remarksText': serializer.toJson<String?>(remarksText),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Remark copyWith(
          {int? id,
          int? transactionId,
          drift.Value<String?> remarksText = const drift.Value.absent(),
          DateTime? createdAt}) =>
      Remark(
        id: id ?? this.id,
        transactionId: transactionId ?? this.transactionId,
        remarksText: remarksText.present ? remarksText.value : this.remarksText,
        createdAt: createdAt ?? this.createdAt,
      );
  Remark copyWithCompanion(RemarksCompanion data) {
    return Remark(
      id: data.id.present ? data.id.value : this.id,
      transactionId: data.transactionId.present
          ? data.transactionId.value
          : this.transactionId,
      remarksText:
          data.remarksText.present ? data.remarksText.value : this.remarksText,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Remark(')
          ..write('id: $id, ')
          ..write('transactionId: $transactionId, ')
          ..write('remarksText: $remarksText, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, transactionId, remarksText, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Remark &&
          other.id == this.id &&
          other.transactionId == this.transactionId &&
          other.remarksText == this.remarksText &&
          other.createdAt == this.createdAt);
}

class RemarksCompanion extends drift.UpdateCompanion<Remark> {
  final drift.Value<int> id;
  final drift.Value<int> transactionId;
  final drift.Value<String?> remarksText;
  final drift.Value<DateTime> createdAt;
  const RemarksCompanion({
    this.id = const drift.Value.absent(),
    this.transactionId = const drift.Value.absent(),
    this.remarksText = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  RemarksCompanion.insert({
    this.id = const drift.Value.absent(),
    required int transactionId,
    this.remarksText = const drift.Value.absent(),
    required DateTime createdAt,
  })  : transactionId = drift.Value(transactionId),
        createdAt = drift.Value(createdAt);
  static drift.Insertable<Remark> custom({
    drift.Expression<int>? id,
    drift.Expression<int>? transactionId,
    drift.Expression<String>? remarksText,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (transactionId != null) 'transaction_id': transactionId,
      if (remarksText != null) 'remarks_text': remarksText,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RemarksCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<int>? transactionId,
      drift.Value<String?>? remarksText,
      drift.Value<DateTime>? createdAt}) {
    return RemarksCompanion(
      id: id ?? this.id,
      transactionId: transactionId ?? this.transactionId,
      remarksText: remarksText ?? this.remarksText,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (transactionId.present) {
      map['transaction_id'] = drift.Variable<int>(transactionId.value);
    }
    if (remarksText.present) {
      map['remarks_text'] = drift.Variable<String>(remarksText.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RemarksCompanion(')
          ..write('id: $id, ')
          ..write('transactionId: $transactionId, ')
          ..write('remarksText: $remarksText, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $RemarkMediaTable extends RemarkMedia
    with drift.TableInfo<$RemarkMediaTable, RemarkMediaData> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RemarkMediaTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _remarkIdMeta =
      const drift.VerificationMeta('remarkId');
  @override
  late final drift.GeneratedColumn<int> remarkId = drift.GeneratedColumn<int>(
      'remark_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES remarks (id) ON DELETE CASCADE'));
  static const drift.VerificationMeta _mediaTypeMeta =
      const drift.VerificationMeta('mediaType');
  @override
  late final drift.GeneratedColumn<String> mediaType =
      drift.GeneratedColumn<String>('media_type', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _filePathMeta =
      const drift.VerificationMeta('filePath');
  @override
  late final drift.GeneratedColumn<String> filePath =
      drift.GeneratedColumn<String>('file_path', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns =>
      [id, remarkId, mediaType, filePath, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'remark_media';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<RemarkMediaData> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('remark_id')) {
      context.handle(_remarkIdMeta,
          remarkId.isAcceptableOrUnknown(data['remark_id']!, _remarkIdMeta));
    } else if (isInserting) {
      context.missing(_remarkIdMeta);
    }
    if (data.containsKey('media_type')) {
      context.handle(_mediaTypeMeta,
          mediaType.isAcceptableOrUnknown(data['media_type']!, _mediaTypeMeta));
    } else if (isInserting) {
      context.missing(_mediaTypeMeta);
    }
    if (data.containsKey('file_path')) {
      context.handle(_filePathMeta,
          filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta));
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  RemarkMediaData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RemarkMediaData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      remarkId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}remark_id'])!,
      mediaType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}media_type'])!,
      filePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_path'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $RemarkMediaTable createAlias(String alias) {
    return $RemarkMediaTable(attachedDatabase, alias);
  }
}

class RemarkMediaData extends drift.DataClass
    implements drift.Insertable<RemarkMediaData> {
  final int id;
  final int remarkId;
  final String mediaType;
  final String filePath;
  final DateTime createdAt;
  const RemarkMediaData(
      {required this.id,
      required this.remarkId,
      required this.mediaType,
      required this.filePath,
      required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    map['remark_id'] = drift.Variable<int>(remarkId);
    map['media_type'] = drift.Variable<String>(mediaType);
    map['file_path'] = drift.Variable<String>(filePath);
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  RemarkMediaCompanion toCompanion(bool nullToAbsent) {
    return RemarkMediaCompanion(
      id: drift.Value(id),
      remarkId: drift.Value(remarkId),
      mediaType: drift.Value(mediaType),
      filePath: drift.Value(filePath),
      createdAt: drift.Value(createdAt),
    );
  }

  factory RemarkMediaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return RemarkMediaData(
      id: serializer.fromJson<int>(json['id']),
      remarkId: serializer.fromJson<int>(json['remarkId']),
      mediaType: serializer.fromJson<String>(json['mediaType']),
      filePath: serializer.fromJson<String>(json['filePath']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'remarkId': serializer.toJson<int>(remarkId),
      'mediaType': serializer.toJson<String>(mediaType),
      'filePath': serializer.toJson<String>(filePath),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RemarkMediaData copyWith(
          {int? id,
          int? remarkId,
          String? mediaType,
          String? filePath,
          DateTime? createdAt}) =>
      RemarkMediaData(
        id: id ?? this.id,
        remarkId: remarkId ?? this.remarkId,
        mediaType: mediaType ?? this.mediaType,
        filePath: filePath ?? this.filePath,
        createdAt: createdAt ?? this.createdAt,
      );
  RemarkMediaData copyWithCompanion(RemarkMediaCompanion data) {
    return RemarkMediaData(
      id: data.id.present ? data.id.value : this.id,
      remarkId: data.remarkId.present ? data.remarkId.value : this.remarkId,
      mediaType: data.mediaType.present ? data.mediaType.value : this.mediaType,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RemarkMediaData(')
          ..write('id: $id, ')
          ..write('remarkId: $remarkId, ')
          ..write('mediaType: $mediaType, ')
          ..write('filePath: $filePath, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, remarkId, mediaType, filePath, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RemarkMediaData &&
          other.id == this.id &&
          other.remarkId == this.remarkId &&
          other.mediaType == this.mediaType &&
          other.filePath == this.filePath &&
          other.createdAt == this.createdAt);
}

class RemarkMediaCompanion extends drift.UpdateCompanion<RemarkMediaData> {
  final drift.Value<int> id;
  final drift.Value<int> remarkId;
  final drift.Value<String> mediaType;
  final drift.Value<String> filePath;
  final drift.Value<DateTime> createdAt;
  const RemarkMediaCompanion({
    this.id = const drift.Value.absent(),
    this.remarkId = const drift.Value.absent(),
    this.mediaType = const drift.Value.absent(),
    this.filePath = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  RemarkMediaCompanion.insert({
    this.id = const drift.Value.absent(),
    required int remarkId,
    required String mediaType,
    required String filePath,
    required DateTime createdAt,
  })  : remarkId = drift.Value(remarkId),
        mediaType = drift.Value(mediaType),
        filePath = drift.Value(filePath),
        createdAt = drift.Value(createdAt);
  static drift.Insertable<RemarkMediaData> custom({
    drift.Expression<int>? id,
    drift.Expression<int>? remarkId,
    drift.Expression<String>? mediaType,
    drift.Expression<String>? filePath,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (remarkId != null) 'remark_id': remarkId,
      if (mediaType != null) 'media_type': mediaType,
      if (filePath != null) 'file_path': filePath,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RemarkMediaCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<int>? remarkId,
      drift.Value<String>? mediaType,
      drift.Value<String>? filePath,
      drift.Value<DateTime>? createdAt}) {
    return RemarkMediaCompanion(
      id: id ?? this.id,
      remarkId: remarkId ?? this.remarkId,
      mediaType: mediaType ?? this.mediaType,
      filePath: filePath ?? this.filePath,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (remarkId.present) {
      map['remark_id'] = drift.Variable<int>(remarkId.value);
    }
    if (mediaType.present) {
      map['media_type'] = drift.Variable<String>(mediaType.value);
    }
    if (filePath.present) {
      map['file_path'] = drift.Variable<String>(filePath.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RemarkMediaCompanion(')
          ..write('id: $id, ')
          ..write('remarkId: $remarkId, ')
          ..write('mediaType: $mediaType, ')
          ..write('filePath: $filePath, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TagsTable extends Tags with drift.TableInfo<$TagsTable, Tag> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagsTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _colorMeta =
      const drift.VerificationMeta('color');
  @override
  late final drift.GeneratedColumn<String> color =
      drift.GeneratedColumn<String>('color', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, color];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tags';
  @override
  drift.VerificationContext validateIntegrity(drift.Insertable<Tag> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Tag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tag(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color']),
    );
  }

  @override
  $TagsTable createAlias(String alias) {
    return $TagsTable(attachedDatabase, alias);
  }
}

class Tag extends drift.DataClass implements drift.Insertable<Tag> {
  final int id;
  final String name;
  final String? color;
  const Tag({required this.id, required this.name, this.color});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    map['name'] = drift.Variable<String>(name);
    if (!nullToAbsent || color != null) {
      map['color'] = drift.Variable<String>(color);
    }
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(
      id: drift.Value(id),
      name: drift.Value(name),
      color: color == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(color),
    );
  }

  factory Tag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Tag(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<String?>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<String?>(color),
    };
  }

  Tag copyWith(
          {int? id,
          String? name,
          drift.Value<String?> color = const drift.Value.absent()}) =>
      Tag(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color.present ? color.value : this.color,
      );
  Tag copyWithCompanion(TagsCompanion data) {
    return Tag(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      color: data.color.present ? data.color.value : this.color,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color);
}

class TagsCompanion extends drift.UpdateCompanion<Tag> {
  final drift.Value<int> id;
  final drift.Value<String> name;
  final drift.Value<String?> color;
  const TagsCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.color = const drift.Value.absent(),
  });
  TagsCompanion.insert({
    this.id = const drift.Value.absent(),
    required String name,
    this.color = const drift.Value.absent(),
  }) : name = drift.Value(name);
  static drift.Insertable<Tag> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<String>? color,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
    });
  }

  TagsCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String>? name,
      drift.Value<String?>? color}) {
    return TagsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = drift.Variable<String>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

class $TransactionTagsTable extends TransactionTags
    with drift.TableInfo<$TransactionTagsTable, TransactionTag> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionTagsTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _transactionIdMeta =
      const drift.VerificationMeta('transactionId');
  @override
  late final drift.GeneratedColumn<int> transactionId =
      drift.GeneratedColumn<int>('transaction_id', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES transactions (id)'));
  static const drift.VerificationMeta _tagIdMeta =
      const drift.VerificationMeta('tagId');
  @override
  late final drift.GeneratedColumn<int> tagId = drift.GeneratedColumn<int>(
      'tag_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tags (id)'));
  @override
  List<drift.GeneratedColumn> get $columns => [transactionId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction_tags';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<TransactionTag> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('transaction_id')) {
      context.handle(
          _transactionIdMeta,
          transactionId.isAcceptableOrUnknown(
              data['transaction_id']!, _transactionIdMeta));
    } else if (isInserting) {
      context.missing(_transactionIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
          _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {transactionId, tagId};
  @override
  TransactionTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionTag(
      transactionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}transaction_id'])!,
      tagId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tag_id'])!,
    );
  }

  @override
  $TransactionTagsTable createAlias(String alias) {
    return $TransactionTagsTable(attachedDatabase, alias);
  }
}

class TransactionTag extends drift.DataClass
    implements drift.Insertable<TransactionTag> {
  final int transactionId;
  final int tagId;
  const TransactionTag({required this.transactionId, required this.tagId});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['transaction_id'] = drift.Variable<int>(transactionId);
    map['tag_id'] = drift.Variable<int>(tagId);
    return map;
  }

  TransactionTagsCompanion toCompanion(bool nullToAbsent) {
    return TransactionTagsCompanion(
      transactionId: drift.Value(transactionId),
      tagId: drift.Value(tagId),
    );
  }

  factory TransactionTag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return TransactionTag(
      transactionId: serializer.fromJson<int>(json['transactionId']),
      tagId: serializer.fromJson<int>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'transactionId': serializer.toJson<int>(transactionId),
      'tagId': serializer.toJson<int>(tagId),
    };
  }

  TransactionTag copyWith({int? transactionId, int? tagId}) => TransactionTag(
        transactionId: transactionId ?? this.transactionId,
        tagId: tagId ?? this.tagId,
      );
  TransactionTag copyWithCompanion(TransactionTagsCompanion data) {
    return TransactionTag(
      transactionId: data.transactionId.present
          ? data.transactionId.value
          : this.transactionId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionTag(')
          ..write('transactionId: $transactionId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(transactionId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionTag &&
          other.transactionId == this.transactionId &&
          other.tagId == this.tagId);
}

class TransactionTagsCompanion extends drift.UpdateCompanion<TransactionTag> {
  final drift.Value<int> transactionId;
  final drift.Value<int> tagId;
  final drift.Value<int> rowid;
  const TransactionTagsCompanion({
    this.transactionId = const drift.Value.absent(),
    this.tagId = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  });
  TransactionTagsCompanion.insert({
    required int transactionId,
    required int tagId,
    this.rowid = const drift.Value.absent(),
  })  : transactionId = drift.Value(transactionId),
        tagId = drift.Value(tagId);
  static drift.Insertable<TransactionTag> custom({
    drift.Expression<int>? transactionId,
    drift.Expression<int>? tagId,
    drift.Expression<int>? rowid,
  }) {
    return drift.RawValuesInsertable({
      if (transactionId != null) 'transaction_id': transactionId,
      if (tagId != null) 'tag_id': tagId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TransactionTagsCompanion copyWith(
      {drift.Value<int>? transactionId,
      drift.Value<int>? tagId,
      drift.Value<int>? rowid}) {
    return TransactionTagsCompanion(
      transactionId: transactionId ?? this.transactionId,
      tagId: tagId ?? this.tagId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (transactionId.present) {
      map['transaction_id'] = drift.Variable<int>(transactionId.value);
    }
    if (tagId.present) {
      map['tag_id'] = drift.Variable<int>(tagId.value);
    }
    if (rowid.present) {
      map['rowid'] = drift.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionTagsCompanion(')
          ..write('transactionId: $transactionId, ')
          ..write('tagId: $tagId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings
    with drift.TableInfo<$SettingsTable, Setting> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _keyMeta =
      const drift.VerificationMeta('key');
  @override
  late final drift.GeneratedColumn<String> key = drift.GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const drift.VerificationMeta _valueMeta =
      const drift.VerificationMeta('value');
  @override
  late final drift.GeneratedColumn<String> value =
      drift.GeneratedColumn<String>('value', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<drift.GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<Setting> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {key};
  @override
  Setting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Setting(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value']),
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class Setting extends drift.DataClass implements drift.Insertable<Setting> {
  final String key;
  final String? value;
  const Setting({required this.key, this.value});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['key'] = drift.Variable<String>(key);
    if (!nullToAbsent || value != null) {
      map['value'] = drift.Variable<String>(value);
    }
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      key: drift.Value(key),
      value: value == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(value),
    );
  }

  factory Setting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Setting(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String?>(value),
    };
  }

  Setting copyWith(
          {String? key,
          drift.Value<String?> value = const drift.Value.absent()}) =>
      Setting(
        key: key ?? this.key,
        value: value.present ? value.value : this.value,
      );
  Setting copyWithCompanion(SettingsCompanion data) {
    return Setting(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Setting(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Setting && other.key == this.key && other.value == this.value);
}

class SettingsCompanion extends drift.UpdateCompanion<Setting> {
  final drift.Value<String> key;
  final drift.Value<String?> value;
  final drift.Value<int> rowid;
  const SettingsCompanion({
    this.key = const drift.Value.absent(),
    this.value = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  });
  SettingsCompanion.insert({
    required String key,
    this.value = const drift.Value.absent(),
    this.rowid = const drift.Value.absent(),
  }) : key = drift.Value(key);
  static drift.Insertable<Setting> custom({
    drift.Expression<String>? key,
    drift.Expression<String>? value,
    drift.Expression<int>? rowid,
  }) {
    return drift.RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsCompanion copyWith(
      {drift.Value<String>? key,
      drift.Value<String?>? value,
      drift.Value<int>? rowid}) {
    return SettingsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (key.present) {
      map['key'] = drift.Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = drift.Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = drift.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with drift.TableInfo<$CategoriesTable, Category> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _parentIdMeta =
      const drift.VerificationMeta('parentId');
  @override
  late final drift.GeneratedColumn<int> parentId = drift.GeneratedColumn<int>(
      'parent_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: 0 as drift.Expression<int>);
  static const drift.VerificationMeta _transactionIdMeta =
      const drift.VerificationMeta('transactionId');
  @override
  late final drift.GeneratedColumn<int> transactionId =
      drift.GeneratedColumn<int>('transaction_id', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES transactions (id) ON DELETE CASCADE'));
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns =>
      [id, name, parentId, transactionId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    if (data.containsKey('transaction_id')) {
      context.handle(
          _transactionIdMeta,
          transactionId.isAcceptableOrUnknown(
              data['transaction_id']!, _transactionIdMeta));
    } else if (isInserting) {
      context.missing(_transactionIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      parentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}parent_id'])!,
      transactionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}transaction_id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends drift.DataClass implements drift.Insertable<Category> {
  final int id;
  final String? name;
  final int parentId;
  final int transactionId;
  final DateTime createdAt;
  const Category(
      {required this.id,
      this.name,
      required this.parentId,
      required this.transactionId,
      required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['parent_id'] = drift.Variable<int>(parentId);
    map['transaction_id'] = drift.Variable<int>(transactionId);
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      parentId: drift.Value(parentId),
      transactionId: drift.Value(transactionId),
      createdAt: drift.Value(createdAt),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      parentId: serializer.fromJson<int>(json['parentId']),
      transactionId: serializer.fromJson<int>(json['transactionId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'parentId': serializer.toJson<int>(parentId),
      'transactionId': serializer.toJson<int>(transactionId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Category copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          int? parentId,
          int? transactionId,
          DateTime? createdAt}) =>
      Category(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        parentId: parentId ?? this.parentId,
        transactionId: transactionId ?? this.transactionId,
        createdAt: createdAt ?? this.createdAt,
      );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      parentId: data.parentId.present ? data.parentId.value : this.parentId,
      transactionId: data.transactionId.present
          ? data.transactionId.value
          : this.transactionId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('parentId: $parentId, ')
          ..write('transactionId: $transactionId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, parentId, transactionId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.name == this.name &&
          other.parentId == this.parentId &&
          other.transactionId == this.transactionId &&
          other.createdAt == this.createdAt);
}

class CategoriesCompanion extends drift.UpdateCompanion<Category> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<int> parentId;
  final drift.Value<int> transactionId;
  final drift.Value<DateTime> createdAt;
  const CategoriesCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.parentId = const drift.Value.absent(),
    this.transactionId = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.parentId = const drift.Value.absent(),
    required int transactionId,
    required DateTime createdAt,
  })  : transactionId = drift.Value(transactionId),
        createdAt = drift.Value(createdAt);
  static drift.Insertable<Category> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<int>? parentId,
    drift.Expression<int>? transactionId,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (parentId != null) 'parent_id': parentId,
      if (transactionId != null) 'transaction_id': transactionId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CategoriesCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<int>? parentId,
      drift.Value<int>? transactionId,
      drift.Value<DateTime>? createdAt}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      parentId: parentId ?? this.parentId,
      transactionId: transactionId ?? this.transactionId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (parentId.present) {
      map['parent_id'] = drift.Variable<int>(parentId.value);
    }
    if (transactionId.present) {
      map['transaction_id'] = drift.Variable<int>(transactionId.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('parentId: $parentId, ')
          ..write('transactionId: $transactionId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ReasonTable extends Reason
    with drift.TableInfo<$ReasonTable, ReasonData> {
  @override
  final drift.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReasonTable(this.attachedDatabase, [this._alias]);
  static const drift.VerificationMeta _idMeta =
      const drift.VerificationMeta('id');
  @override
  late final drift.GeneratedColumn<int> id = drift.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const drift.VerificationMeta _nameMeta =
      const drift.VerificationMeta('name');
  @override
  late final drift.GeneratedColumn<String> name = drift.GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const drift.VerificationMeta _createdAtMeta =
      const drift.VerificationMeta('createdAt');
  @override
  late final drift.GeneratedColumn<DateTime> createdAt =
      drift.GeneratedColumn<DateTime>('created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<drift.GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reason';
  @override
  drift.VerificationContext validateIntegrity(
      drift.Insertable<ReasonData> instance,
      {bool isInserting = false}) {
    final context = drift.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<drift.GeneratedColumn> get $primaryKey => {id};
  @override
  ReasonData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReasonData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ReasonTable createAlias(String alias) {
    return $ReasonTable(attachedDatabase, alias);
  }
}

class ReasonData extends drift.DataClass
    implements drift.Insertable<ReasonData> {
  final int id;
  final String? name;
  final DateTime createdAt;
  const ReasonData({required this.id, this.name, required this.createdAt});
  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    map['id'] = drift.Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = drift.Variable<String>(name);
    }
    map['created_at'] = drift.Variable<DateTime>(createdAt);
    return map;
  }

  ReasonCompanion toCompanion(bool nullToAbsent) {
    return ReasonCompanion(
      id: drift.Value(id),
      name: name == null && nullToAbsent
          ? const drift.Value.absent()
          : drift.Value(name),
      createdAt: drift.Value(createdAt),
    );
  }

  factory ReasonData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return ReasonData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= drift.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ReasonData copyWith(
          {int? id,
          drift.Value<String?> name = const drift.Value.absent(),
          DateTime? createdAt}) =>
      ReasonData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  ReasonData copyWithCompanion(ReasonCompanion data) {
    return ReasonData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReasonData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReasonData &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class ReasonCompanion extends drift.UpdateCompanion<ReasonData> {
  final drift.Value<int> id;
  final drift.Value<String?> name;
  final drift.Value<DateTime> createdAt;
  const ReasonCompanion({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    this.createdAt = const drift.Value.absent(),
  });
  ReasonCompanion.insert({
    this.id = const drift.Value.absent(),
    this.name = const drift.Value.absent(),
    required DateTime createdAt,
  }) : createdAt = drift.Value(createdAt);
  static drift.Insertable<ReasonData> custom({
    drift.Expression<int>? id,
    drift.Expression<String>? name,
    drift.Expression<DateTime>? createdAt,
  }) {
    return drift.RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ReasonCompanion copyWith(
      {drift.Value<int>? id,
      drift.Value<String?>? name,
      drift.Value<DateTime>? createdAt}) {
    return ReasonCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, drift.Expression> toColumns(bool nullToAbsent) {
    final map = <String, drift.Expression>{};
    if (id.present) {
      map['id'] = drift.Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = drift.Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = drift.Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReasonCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$TradingDatabase extends drift.GeneratedDatabase {
  _$TradingDatabase(QueryExecutor e) : super(e);
  $TradingDatabaseManager get managers => $TradingDatabaseManager(this);
  late final $AccountTypesTable accountTypes = $AccountTypesTable(this);
  late final $CurrencysTable currencys = $CurrencysTable(this);
  late final $AccountsTable accounts = $AccountsTable(this);
  late final $AssetsTypesTable assetsTypes = $AssetsTypesTable(this);
  late final $AssetsTable assets = $AssetsTable(this);
  late final $SidesTable sides = $SidesTable(this);
  late final $EntryConditionsTable entryConditions =
      $EntryConditionsTable(this);
  late final $SessionsTable sessions = $SessionsTable(this);
  late final $TraderTypesTable traderTypes = $TraderTypesTable(this);
  late final $MoodsTable moods = $MoodsTable(this);
  late final $TransactionsTable transactions = $TransactionsTable(this);
  late final $TransactionMediaTable transactionMedia =
      $TransactionMediaTable(this);
  late final $RemarksTable remarks = $RemarksTable(this);
  late final $RemarkMediaTable remarkMedia = $RemarkMediaTable(this);
  late final $TagsTable tags = $TagsTable(this);
  late final $TransactionTagsTable transactionTags =
      $TransactionTagsTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $ReasonTable reason = $ReasonTable(this);
  @override
  Iterable<drift.TableInfo<drift.Table, Object?>> get allTables =>
      allSchemaEntities.whereType<drift.TableInfo<drift.Table, Object?>>();
  @override
  List<drift.DatabaseSchemaEntity> get allSchemaEntities => [
        accountTypes,
        currencys,
        accounts,
        assetsTypes,
        assets,
        sides,
        entryConditions,
        sessions,
        traderTypes,
        moods,
        transactions,
        transactionMedia,
        remarks,
        remarkMedia,
        tags,
        transactionTags,
        settings,
        categories,
        reason
      ];
  @override
  drift.StreamQueryUpdateRules get streamUpdateRules =>
      const StreamQueryUpdateRules(
        [
          drift.WritePropagation(
            on: drift.TableUpdateQuery.onTableName('transactions',
                limitUpdateKind: drift.UpdateKind.delete),
            result: [
              drift.TableUpdate('transaction_media',
                  kind: drift.UpdateKind.delete),
            ],
          ),
          drift.WritePropagation(
            on: drift.TableUpdateQuery.onTableName('transactions',
                limitUpdateKind: drift.UpdateKind.delete),
            result: [
              drift.TableUpdate('remarks', kind: drift.UpdateKind.delete),
            ],
          ),
          drift.WritePropagation(
            on: drift.TableUpdateQuery.onTableName('remarks',
                limitUpdateKind: drift.UpdateKind.delete),
            result: [
              drift.TableUpdate('remark_media', kind: drift.UpdateKind.delete),
            ],
          ),
          drift.WritePropagation(
            on: drift.TableUpdateQuery.onTableName('transactions',
                limitUpdateKind: drift.UpdateKind.delete),
            result: [
              drift.TableUpdate('categories', kind: drift.UpdateKind.delete),
            ],
          ),
        ],
      );
}

typedef $$AccountTypesTableCreateCompanionBuilder = AccountTypesCompanion
    Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  required DateTime createdAt,
});
typedef $$AccountTypesTableUpdateCompanionBuilder = AccountTypesCompanion
    Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<DateTime> createdAt,
});

final class $$AccountTypesTableReferences extends drift
    .BaseReferences<_$TradingDatabase, $AccountTypesTable, AccountType> {
  $$AccountTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$AccountsTable, List<Account>>
      _accountsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.accounts,
              aliasName: drift.$_aliasNameGenerator(
                  db.accountTypes.id, db.accounts.typeId));

  $$AccountsTableProcessedTableManager get accountsRefs {
    final manager = $$AccountsTableTableManager($_db, $_db.accounts)
        .filter((f) => f.typeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_accountsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AccountTypesTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $AccountTypesTable> {
  $$AccountTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> accountsRefs(
      drift.Expression<bool> Function($$AccountsTableFilterComposer f) f) {
    final $$AccountsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.accounts,
        getReferencedColumn: (t) => t.typeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountsTableFilterComposer(
              $db: $db,
              $table: $db.accounts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AccountTypesTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $AccountTypesTable> {
  $$AccountTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));
}

class $$AccountTypesTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $AccountTypesTable> {
  $$AccountTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.Expression<T> accountsRefs<T extends Object>(
      drift.Expression<T> Function($$AccountsTableAnnotationComposer a) f) {
    final $$AccountsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.accounts,
        getReferencedColumn: (t) => t.typeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountsTableAnnotationComposer(
              $db: $db,
              $table: $db.accounts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AccountTypesTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $AccountTypesTable,
    AccountType,
    $$AccountTypesTableFilterComposer,
    $$AccountTypesTableOrderingComposer,
    $$AccountTypesTableAnnotationComposer,
    $$AccountTypesTableCreateCompanionBuilder,
    $$AccountTypesTableUpdateCompanionBuilder,
    (AccountType, $$AccountTypesTableReferences),
    AccountType,
    drift.PrefetchHooks Function({bool accountsRefs})> {
  $$AccountTypesTableTableManager(
      _$TradingDatabase db, $AccountTypesTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              AccountTypesCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              AccountTypesCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AccountTypesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({accountsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (accountsRefs) db.accounts],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (accountsRefs)
                    await drift
                        .$_getPrefetchedData<AccountType, $AccountTypesTable,
                                Account>(
                            currentTable: table,
                            referencedTable:
                                $$AccountTypesTableReferences
                                    ._accountsRefsTable(db),
                            managerFromTypedResult:
                                (p0) =>
                                    $$AccountTypesTableReferences(db, table,
                                            p0)
                                        .accountsRefs,
                            referencedItemsForCurrentItem:
                                (item, referencedItems) => referencedItems
                                    .where((e) => e.typeId == item.id),
                            typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$AccountTypesTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $AccountTypesTable,
    AccountType,
    $$AccountTypesTableFilterComposer,
    $$AccountTypesTableOrderingComposer,
    $$AccountTypesTableAnnotationComposer,
    $$AccountTypesTableCreateCompanionBuilder,
    $$AccountTypesTableUpdateCompanionBuilder,
    (AccountType, $$AccountTypesTableReferences),
    AccountType,
    drift.PrefetchHooks Function({bool accountsRefs})>;
typedef $$CurrencysTableCreateCompanionBuilder = CurrencysCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  required DateTime createdAt,
});
typedef $$CurrencysTableUpdateCompanionBuilder = CurrencysCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<DateTime> createdAt,
});

final class $$CurrencysTableReferences
    extends drift.BaseReferences<_$TradingDatabase, $CurrencysTable, Currency> {
  $$CurrencysTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$AccountsTable, List<Account>>
      _accountsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.accounts,
              aliasName: drift.$_aliasNameGenerator(
                  db.currencys.id, db.accounts.currencyId));

  $$AccountsTableProcessedTableManager get accountsRefs {
    final manager = $$AccountsTableTableManager($_db, $_db.accounts)
        .filter((f) => f.currencyId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_accountsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$AssetsTable, List<Asset>> _assetsRefsTable(
          _$TradingDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.assets,
          aliasName: drift.$_aliasNameGenerator(
              db.currencys.id, db.assets.currencyId));

  $$AssetsTableProcessedTableManager get assetsRefs {
    final manager = $$AssetsTableTableManager($_db, $_db.assets)
        .filter((f) => f.currencyId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_assetsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CurrencysTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $CurrencysTable> {
  $$CurrencysTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> accountsRefs(
      drift.Expression<bool> Function($$AccountsTableFilterComposer f) f) {
    final $$AccountsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.accounts,
        getReferencedColumn: (t) => t.currencyId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountsTableFilterComposer(
              $db: $db,
              $table: $db.accounts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> assetsRefs(
      drift.Expression<bool> Function($$AssetsTableFilterComposer f) f) {
    final $$AssetsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assets,
        getReferencedColumn: (t) => t.currencyId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTableFilterComposer(
              $db: $db,
              $table: $db.assets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CurrencysTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $CurrencysTable> {
  $$CurrencysTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));
}

class $$CurrencysTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $CurrencysTable> {
  $$CurrencysTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.Expression<T> accountsRefs<T extends Object>(
      drift.Expression<T> Function($$AccountsTableAnnotationComposer a) f) {
    final $$AccountsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.accounts,
        getReferencedColumn: (t) => t.currencyId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountsTableAnnotationComposer(
              $db: $db,
              $table: $db.accounts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> assetsRefs<T extends Object>(
      drift.Expression<T> Function($$AssetsTableAnnotationComposer a) f) {
    final $$AssetsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assets,
        getReferencedColumn: (t) => t.currencyId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTableAnnotationComposer(
              $db: $db,
              $table: $db.assets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CurrencysTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $CurrencysTable,
    Currency,
    $$CurrencysTableFilterComposer,
    $$CurrencysTableOrderingComposer,
    $$CurrencysTableAnnotationComposer,
    $$CurrencysTableCreateCompanionBuilder,
    $$CurrencysTableUpdateCompanionBuilder,
    (Currency, $$CurrencysTableReferences),
    Currency,
    drift.PrefetchHooks Function({bool accountsRefs, bool assetsRefs})> {
  $$CurrencysTableTableManager(_$TradingDatabase db, $CurrencysTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CurrencysTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CurrencysTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CurrencysTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              CurrencysCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              CurrencysCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CurrencysTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({accountsRefs = false, assetsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (accountsRefs) db.accounts,
                if (assetsRefs) db.assets
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (accountsRefs)
                    await drift.$_getPrefetchedData<Currency, $CurrencysTable,
                            Account>(
                        currentTable: table,
                        referencedTable:
                            $$CurrencysTableReferences._accountsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CurrencysTableReferences(db, table, p0)
                                .accountsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.currencyId == item.id),
                        typedResults: items),
                  if (assetsRefs)
                    await drift
                        .$_getPrefetchedData<Currency, $CurrencysTable, Asset>(
                            currentTable: table,
                            referencedTable:
                                $$CurrencysTableReferences._assetsRefsTable(db),
                            managerFromTypedResult: (p0) =>
                                $$CurrencysTableReferences(db, table, p0)
                                    .assetsRefs,
                            referencedItemsForCurrentItem:
                                (item, referencedItems) => referencedItems
                                    .where((e) => e.currencyId == item.id),
                            typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CurrencysTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $CurrencysTable,
    Currency,
    $$CurrencysTableFilterComposer,
    $$CurrencysTableOrderingComposer,
    $$CurrencysTableAnnotationComposer,
    $$CurrencysTableCreateCompanionBuilder,
    $$CurrencysTableUpdateCompanionBuilder,
    (Currency, $$CurrencysTableReferences),
    Currency,
    drift.PrefetchHooks Function({bool accountsRefs, bool assetsRefs})>;
typedef $$AccountsTableCreateCompanionBuilder = AccountsCompanion Function({
  drift.Value<int> id,
  required String name,
  required int typeId,
  required int currencyId,
  drift.Value<double> balance,
  required DateTime createdAt,
});
typedef $$AccountsTableUpdateCompanionBuilder = AccountsCompanion Function({
  drift.Value<int> id,
  drift.Value<String> name,
  drift.Value<int> typeId,
  drift.Value<int> currencyId,
  drift.Value<double> balance,
  drift.Value<DateTime> createdAt,
});

final class $$AccountsTableReferences
    extends drift.BaseReferences<_$TradingDatabase, $AccountsTable, Account> {
  $$AccountsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AccountTypesTable _typeIdTable(_$TradingDatabase db) =>
      db.accountTypes.createAlias(
          drift.$_aliasNameGenerator(db.accounts.typeId, db.accountTypes.id));

  $$AccountTypesTableProcessedTableManager get typeId {
    final $_column = $_itemColumn<int>('type_id')!;

    final manager = $$AccountTypesTableTableManager($_db, $_db.accountTypes)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_typeIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $CurrencysTable _currencyIdTable(_$TradingDatabase db) =>
      db.currencys.createAlias(
          drift.$_aliasNameGenerator(db.accounts.currencyId, db.currencys.id));

  $$CurrencysTableProcessedTableManager get currencyId {
    final $_column = $_itemColumn<int>('currency_id')!;

    final manager = $$CurrencysTableTableManager($_db, $_db.currencys)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_currencyIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static drift.MultiTypedResultKey<$TransactionsTable, List<Transaction>>
      _transactionsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactions,
              aliasName: drift.$_aliasNameGenerator(
                  db.accounts.id, db.transactions.accountId));

  $$TransactionsTableProcessedTableManager get transactionsRefs {
    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.accountId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_transactionsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AccountsTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $AccountsTable> {
  $$AccountsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  $$AccountTypesTableFilterComposer get typeId {
    final $$AccountTypesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.typeId,
        referencedTable: $db.accountTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountTypesTableFilterComposer(
              $db: $db,
              $table: $db.accountTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CurrencysTableFilterComposer get currencyId {
    final $$CurrencysTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.currencyId,
        referencedTable: $db.currencys,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CurrencysTableFilterComposer(
              $db: $db,
              $table: $db.currencys,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<bool> transactionsRefs(
      drift.Expression<bool> Function($$TransactionsTableFilterComposer f) f) {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.accountId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AccountsTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $AccountsTable> {
  $$AccountsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get balance => $composableBuilder(
      column: $table.balance,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));

  $$AccountTypesTableOrderingComposer get typeId {
    final $$AccountTypesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.typeId,
        referencedTable: $db.accountTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountTypesTableOrderingComposer(
              $db: $db,
              $table: $db.accountTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CurrencysTableOrderingComposer get currencyId {
    final $$CurrencysTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.currencyId,
        referencedTable: $db.currencys,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CurrencysTableOrderingComposer(
              $db: $db,
              $table: $db.currencys,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AccountsTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $AccountsTable> {
  $$AccountsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<double> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$AccountTypesTableAnnotationComposer get typeId {
    final $$AccountTypesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.typeId,
        referencedTable: $db.accountTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountTypesTableAnnotationComposer(
              $db: $db,
              $table: $db.accountTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CurrencysTableAnnotationComposer get currencyId {
    final $$CurrencysTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.currencyId,
        referencedTable: $db.currencys,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CurrencysTableAnnotationComposer(
              $db: $db,
              $table: $db.currencys,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<T> transactionsRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionsTableAnnotationComposer a) f) {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.accountId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AccountsTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $AccountsTable,
    Account,
    $$AccountsTableFilterComposer,
    $$AccountsTableOrderingComposer,
    $$AccountsTableAnnotationComposer,
    $$AccountsTableCreateCompanionBuilder,
    $$AccountsTableUpdateCompanionBuilder,
    (Account, $$AccountsTableReferences),
    Account,
    drift.PrefetchHooks Function(
        {bool typeId, bool currencyId, bool transactionsRefs})> {
  $$AccountsTableTableManager(_$TradingDatabase db, $AccountsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String> name = const drift.Value.absent(),
            drift.Value<int> typeId = const drift.Value.absent(),
            drift.Value<int> currencyId = const drift.Value.absent(),
            drift.Value<double> balance = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              AccountsCompanion(
            id: id,
            name: name,
            typeId: typeId,
            currencyId: currencyId,
            balance: balance,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            required String name,
            required int typeId,
            required int currencyId,
            drift.Value<double> balance = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              AccountsCompanion.insert(
            id: id,
            name: name,
            typeId: typeId,
            currencyId: currencyId,
            balance: balance,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$AccountsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {typeId = false, currencyId = false, transactionsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (transactionsRefs) db.transactions],
              addJoins: <
                  T extends drift.TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (typeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.typeId,
                    referencedTable: $$AccountsTableReferences._typeIdTable(db),
                    referencedColumn:
                        $$AccountsTableReferences._typeIdTable(db).id,
                  ) as T;
                }
                if (currencyId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.currencyId,
                    referencedTable:
                        $$AccountsTableReferences._currencyIdTable(db),
                    referencedColumn:
                        $$AccountsTableReferences._currencyIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionsRefs)
                    await drift.$_getPrefetchedData<Account, $AccountsTable,
                            Transaction>(
                        currentTable: table,
                        referencedTable: $$AccountsTableReferences
                            ._transactionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AccountsTableReferences(db, table, p0)
                                .transactionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.accountId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$AccountsTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $AccountsTable,
    Account,
    $$AccountsTableFilterComposer,
    $$AccountsTableOrderingComposer,
    $$AccountsTableAnnotationComposer,
    $$AccountsTableCreateCompanionBuilder,
    $$AccountsTableUpdateCompanionBuilder,
    (Account, $$AccountsTableReferences),
    Account,
    drift.PrefetchHooks Function(
        {bool typeId, bool currencyId, bool transactionsRefs})>;
typedef $$AssetsTypesTableCreateCompanionBuilder = AssetsTypesCompanion
    Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  required DateTime createdAt,
});
typedef $$AssetsTypesTableUpdateCompanionBuilder = AssetsTypesCompanion
    Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<DateTime> createdAt,
});

final class $$AssetsTypesTableReferences extends drift
    .BaseReferences<_$TradingDatabase, $AssetsTypesTable, AssetsType> {
  $$AssetsTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$AssetsTable, List<Asset>> _assetsRefsTable(
          _$TradingDatabase db) =>
      drift.MultiTypedResultKey.fromTable(db.assets,
          aliasName: drift.$_aliasNameGenerator(
              db.assetsTypes.id, db.assets.assetTypeId));

  $$AssetsTableProcessedTableManager get assetsRefs {
    final manager = $$AssetsTableTableManager($_db, $_db.assets)
        .filter((f) => f.assetTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_assetsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AssetsTypesTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $AssetsTypesTable> {
  $$AssetsTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> assetsRefs(
      drift.Expression<bool> Function($$AssetsTableFilterComposer f) f) {
    final $$AssetsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assets,
        getReferencedColumn: (t) => t.assetTypeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTableFilterComposer(
              $db: $db,
              $table: $db.assets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AssetsTypesTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $AssetsTypesTable> {
  $$AssetsTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));
}

class $$AssetsTypesTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $AssetsTypesTable> {
  $$AssetsTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.Expression<T> assetsRefs<T extends Object>(
      drift.Expression<T> Function($$AssetsTableAnnotationComposer a) f) {
    final $$AssetsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assets,
        getReferencedColumn: (t) => t.assetTypeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTableAnnotationComposer(
              $db: $db,
              $table: $db.assets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AssetsTypesTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $AssetsTypesTable,
    AssetsType,
    $$AssetsTypesTableFilterComposer,
    $$AssetsTypesTableOrderingComposer,
    $$AssetsTypesTableAnnotationComposer,
    $$AssetsTypesTableCreateCompanionBuilder,
    $$AssetsTypesTableUpdateCompanionBuilder,
    (AssetsType, $$AssetsTypesTableReferences),
    AssetsType,
    drift.PrefetchHooks Function({bool assetsRefs})> {
  $$AssetsTypesTableTableManager(_$TradingDatabase db, $AssetsTypesTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AssetsTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AssetsTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AssetsTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              AssetsTypesCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              AssetsTypesCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AssetsTypesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({assetsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (assetsRefs) db.assets],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (assetsRefs)
                    await drift.$_getPrefetchedData<AssetsType,
                            $AssetsTypesTable, Asset>(
                        currentTable: table,
                        referencedTable:
                            $$AssetsTypesTableReferences._assetsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AssetsTypesTableReferences(db, table, p0)
                                .assetsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.assetTypeId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$AssetsTypesTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $AssetsTypesTable,
    AssetsType,
    $$AssetsTypesTableFilterComposer,
    $$AssetsTypesTableOrderingComposer,
    $$AssetsTypesTableAnnotationComposer,
    $$AssetsTypesTableCreateCompanionBuilder,
    $$AssetsTypesTableUpdateCompanionBuilder,
    (AssetsType, $$AssetsTypesTableReferences),
    AssetsType,
    drift.PrefetchHooks Function({bool assetsRefs})>;
typedef $$AssetsTableCreateCompanionBuilder = AssetsCompanion Function({
  drift.Value<int> id,
  required String symbol,
  drift.Value<String?> name,
  required int assetTypeId,
  drift.Value<String?> exchange,
  required int currencyId,
  drift.Value<double> multiplier,
  drift.Value<String?> notes,
});
typedef $$AssetsTableUpdateCompanionBuilder = AssetsCompanion Function({
  drift.Value<int> id,
  drift.Value<String> symbol,
  drift.Value<String?> name,
  drift.Value<int> assetTypeId,
  drift.Value<String?> exchange,
  drift.Value<int> currencyId,
  drift.Value<double> multiplier,
  drift.Value<String?> notes,
});

final class $$AssetsTableReferences
    extends drift.BaseReferences<_$TradingDatabase, $AssetsTable, Asset> {
  $$AssetsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AssetsTypesTable _assetTypeIdTable(_$TradingDatabase db) =>
      db.assetsTypes.createAlias(
          drift.$_aliasNameGenerator(db.assets.assetTypeId, db.assetsTypes.id));

  $$AssetsTypesTableProcessedTableManager get assetTypeId {
    final $_column = $_itemColumn<int>('asset_type_id')!;

    final manager = $$AssetsTypesTableTableManager($_db, $_db.assetsTypes)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_assetTypeIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $CurrencysTable _currencyIdTable(_$TradingDatabase db) =>
      db.currencys.createAlias(
          drift.$_aliasNameGenerator(db.assets.currencyId, db.currencys.id));

  $$CurrencysTableProcessedTableManager get currencyId {
    final $_column = $_itemColumn<int>('currency_id')!;

    final manager = $$CurrencysTableTableManager($_db, $_db.currencys)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_currencyIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static drift.MultiTypedResultKey<$TransactionsTable, List<Transaction>>
      _transactionsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactions,
              aliasName: drift.$_aliasNameGenerator(
                  db.assets.id, db.transactions.assetId));

  $$TransactionsTableProcessedTableManager get transactionsRefs {
    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.assetId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_transactionsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AssetsTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $AssetsTable> {
  $$AssetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get symbol => $composableBuilder(
      column: $table.symbol, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get exchange => $composableBuilder(
      column: $table.exchange,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get multiplier => $composableBuilder(
      column: $table.multiplier,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => drift.ColumnFilters(column));

  $$AssetsTypesTableFilterComposer get assetTypeId {
    final $$AssetsTypesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.assetTypeId,
        referencedTable: $db.assetsTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTypesTableFilterComposer(
              $db: $db,
              $table: $db.assetsTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CurrencysTableFilterComposer get currencyId {
    final $$CurrencysTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.currencyId,
        referencedTable: $db.currencys,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CurrencysTableFilterComposer(
              $db: $db,
              $table: $db.currencys,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<bool> transactionsRefs(
      drift.Expression<bool> Function($$TransactionsTableFilterComposer f) f) {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.assetId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AssetsTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $AssetsTable> {
  $$AssetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get symbol => $composableBuilder(
      column: $table.symbol,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get exchange => $composableBuilder(
      column: $table.exchange,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get multiplier => $composableBuilder(
      column: $table.multiplier,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => drift.ColumnOrderings(column));

  $$AssetsTypesTableOrderingComposer get assetTypeId {
    final $$AssetsTypesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.assetTypeId,
        referencedTable: $db.assetsTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTypesTableOrderingComposer(
              $db: $db,
              $table: $db.assetsTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CurrencysTableOrderingComposer get currencyId {
    final $$CurrencysTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.currencyId,
        referencedTable: $db.currencys,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CurrencysTableOrderingComposer(
              $db: $db,
              $table: $db.currencys,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AssetsTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $AssetsTable> {
  $$AssetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<String> get exchange =>
      $composableBuilder(column: $table.exchange, builder: (column) => column);

  drift.GeneratedColumn<double> get multiplier => $composableBuilder(
      column: $table.multiplier, builder: (column) => column);

  drift.GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$AssetsTypesTableAnnotationComposer get assetTypeId {
    final $$AssetsTypesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.assetTypeId,
        referencedTable: $db.assetsTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTypesTableAnnotationComposer(
              $db: $db,
              $table: $db.assetsTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$CurrencysTableAnnotationComposer get currencyId {
    final $$CurrencysTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.currencyId,
        referencedTable: $db.currencys,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CurrencysTableAnnotationComposer(
              $db: $db,
              $table: $db.currencys,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<T> transactionsRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionsTableAnnotationComposer a) f) {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.assetId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AssetsTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $AssetsTable,
    Asset,
    $$AssetsTableFilterComposer,
    $$AssetsTableOrderingComposer,
    $$AssetsTableAnnotationComposer,
    $$AssetsTableCreateCompanionBuilder,
    $$AssetsTableUpdateCompanionBuilder,
    (Asset, $$AssetsTableReferences),
    Asset,
    drift.PrefetchHooks Function(
        {bool assetTypeId, bool currencyId, bool transactionsRefs})> {
  $$AssetsTableTableManager(_$TradingDatabase db, $AssetsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AssetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AssetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AssetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String> symbol = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<int> assetTypeId = const drift.Value.absent(),
            drift.Value<String?> exchange = const drift.Value.absent(),
            drift.Value<int> currencyId = const drift.Value.absent(),
            drift.Value<double> multiplier = const drift.Value.absent(),
            drift.Value<String?> notes = const drift.Value.absent(),
          }) =>
              AssetsCompanion(
            id: id,
            symbol: symbol,
            name: name,
            assetTypeId: assetTypeId,
            exchange: exchange,
            currencyId: currencyId,
            multiplier: multiplier,
            notes: notes,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            required String symbol,
            drift.Value<String?> name = const drift.Value.absent(),
            required int assetTypeId,
            drift.Value<String?> exchange = const drift.Value.absent(),
            required int currencyId,
            drift.Value<double> multiplier = const drift.Value.absent(),
            drift.Value<String?> notes = const drift.Value.absent(),
          }) =>
              AssetsCompanion.insert(
            id: id,
            symbol: symbol,
            name: name,
            assetTypeId: assetTypeId,
            exchange: exchange,
            currencyId: currencyId,
            multiplier: multiplier,
            notes: notes,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$AssetsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {assetTypeId = false,
              currencyId = false,
              transactionsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (transactionsRefs) db.transactions],
              addJoins: <
                  T extends drift.TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (assetTypeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.assetTypeId,
                    referencedTable:
                        $$AssetsTableReferences._assetTypeIdTable(db),
                    referencedColumn:
                        $$AssetsTableReferences._assetTypeIdTable(db).id,
                  ) as T;
                }
                if (currencyId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.currencyId,
                    referencedTable:
                        $$AssetsTableReferences._currencyIdTable(db),
                    referencedColumn:
                        $$AssetsTableReferences._currencyIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionsRefs)
                    await drift
                        .$_getPrefetchedData<Asset, $AssetsTable, Transaction>(
                            currentTable: table,
                            referencedTable: $$AssetsTableReferences
                                ._transactionsRefsTable(db),
                            managerFromTypedResult: (p0) =>
                                $$AssetsTableReferences(db, table, p0)
                                    .transactionsRefs,
                            referencedItemsForCurrentItem:
                                (item, referencedItems) => referencedItems
                                    .where((e) => e.assetId == item.id),
                            typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$AssetsTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $AssetsTable,
    Asset,
    $$AssetsTableFilterComposer,
    $$AssetsTableOrderingComposer,
    $$AssetsTableAnnotationComposer,
    $$AssetsTableCreateCompanionBuilder,
    $$AssetsTableUpdateCompanionBuilder,
    (Asset, $$AssetsTableReferences),
    Asset,
    drift.PrefetchHooks Function(
        {bool assetTypeId, bool currencyId, bool transactionsRefs})>;
typedef $$SidesTableCreateCompanionBuilder = SidesCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  required DateTime createdAt,
});
typedef $$SidesTableUpdateCompanionBuilder = SidesCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<DateTime> createdAt,
});

final class $$SidesTableReferences
    extends drift.BaseReferences<_$TradingDatabase, $SidesTable, Side> {
  $$SidesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$TransactionsTable, List<Transaction>>
      _transactionsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactions,
              aliasName: drift.$_aliasNameGenerator(
                  db.sides.id, db.transactions.sideId));

  $$TransactionsTableProcessedTableManager get transactionsRefs {
    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.sideId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_transactionsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SidesTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $SidesTable> {
  $$SidesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> transactionsRefs(
      drift.Expression<bool> Function($$TransactionsTableFilterComposer f) f) {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.sideId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SidesTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $SidesTable> {
  $$SidesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));
}

class $$SidesTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $SidesTable> {
  $$SidesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.Expression<T> transactionsRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionsTableAnnotationComposer a) f) {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.sideId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SidesTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $SidesTable,
    Side,
    $$SidesTableFilterComposer,
    $$SidesTableOrderingComposer,
    $$SidesTableAnnotationComposer,
    $$SidesTableCreateCompanionBuilder,
    $$SidesTableUpdateCompanionBuilder,
    (Side, $$SidesTableReferences),
    Side,
    drift.PrefetchHooks Function({bool transactionsRefs})> {
  $$SidesTableTableManager(_$TradingDatabase db, $SidesTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SidesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SidesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SidesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              SidesCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              SidesCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$SidesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({transactionsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (transactionsRefs) db.transactions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionsRefs)
                    await drift.$_getPrefetchedData<Side, $SidesTable,
                            Transaction>(
                        currentTable: table,
                        referencedTable:
                            $$SidesTableReferences._transactionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SidesTableReferences(db, table, p0)
                                .transactionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.sideId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SidesTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $SidesTable,
    Side,
    $$SidesTableFilterComposer,
    $$SidesTableOrderingComposer,
    $$SidesTableAnnotationComposer,
    $$SidesTableCreateCompanionBuilder,
    $$SidesTableUpdateCompanionBuilder,
    (Side, $$SidesTableReferences),
    Side,
    drift.PrefetchHooks Function({bool transactionsRefs})>;
typedef $$EntryConditionsTableCreateCompanionBuilder = EntryConditionsCompanion
    Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  required DateTime createdAt,
});
typedef $$EntryConditionsTableUpdateCompanionBuilder = EntryConditionsCompanion
    Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<DateTime> createdAt,
});

final class $$EntryConditionsTableReferences extends drift
    .BaseReferences<_$TradingDatabase, $EntryConditionsTable, EntryCondition> {
  $$EntryConditionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$TransactionsTable, List<Transaction>>
      _transactionsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactions,
              aliasName: drift.$_aliasNameGenerator(
                  db.entryConditions.id, db.transactions.entryConditionId));

  $$TransactionsTableProcessedTableManager get transactionsRefs {
    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter(
            (f) => f.entryConditionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_transactionsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$EntryConditionsTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $EntryConditionsTable> {
  $$EntryConditionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> transactionsRefs(
      drift.Expression<bool> Function($$TransactionsTableFilterComposer f) f) {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.entryConditionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$EntryConditionsTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $EntryConditionsTable> {
  $$EntryConditionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));
}

class $$EntryConditionsTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $EntryConditionsTable> {
  $$EntryConditionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.Expression<T> transactionsRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionsTableAnnotationComposer a) f) {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.entryConditionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$EntryConditionsTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $EntryConditionsTable,
    EntryCondition,
    $$EntryConditionsTableFilterComposer,
    $$EntryConditionsTableOrderingComposer,
    $$EntryConditionsTableAnnotationComposer,
    $$EntryConditionsTableCreateCompanionBuilder,
    $$EntryConditionsTableUpdateCompanionBuilder,
    (EntryCondition, $$EntryConditionsTableReferences),
    EntryCondition,
    drift.PrefetchHooks Function({bool transactionsRefs})> {
  $$EntryConditionsTableTableManager(
      _$TradingDatabase db, $EntryConditionsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EntryConditionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EntryConditionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EntryConditionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              EntryConditionsCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              EntryConditionsCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$EntryConditionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({transactionsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (transactionsRefs) db.transactions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionsRefs)
                    await drift.$_getPrefetchedData<EntryCondition,
                            $EntryConditionsTable, Transaction>(
                        currentTable: table,
                        referencedTable: $$EntryConditionsTableReferences
                            ._transactionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$EntryConditionsTableReferences(db, table, p0)
                                .transactionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.entryConditionId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$EntryConditionsTableProcessedTableManager
    = drift.ProcessedTableManager<
        _$TradingDatabase,
        $EntryConditionsTable,
        EntryCondition,
        $$EntryConditionsTableFilterComposer,
        $$EntryConditionsTableOrderingComposer,
        $$EntryConditionsTableAnnotationComposer,
        $$EntryConditionsTableCreateCompanionBuilder,
        $$EntryConditionsTableUpdateCompanionBuilder,
        (EntryCondition, $$EntryConditionsTableReferences),
        EntryCondition,
        drift.PrefetchHooks Function({bool transactionsRefs})>;
typedef $$SessionsTableCreateCompanionBuilder = SessionsCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  required DateTime createdAt,
});
typedef $$SessionsTableUpdateCompanionBuilder = SessionsCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<DateTime> createdAt,
});

final class $$SessionsTableReferences
    extends drift.BaseReferences<_$TradingDatabase, $SessionsTable, Session> {
  $$SessionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$TransactionsTable, List<Transaction>>
      _transactionsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactions,
              aliasName: drift.$_aliasNameGenerator(
                  db.sessions.id, db.transactions.sessionId));

  $$TransactionsTableProcessedTableManager get transactionsRefs {
    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.sessionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_transactionsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SessionsTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $SessionsTable> {
  $$SessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> transactionsRefs(
      drift.Expression<bool> Function($$TransactionsTableFilterComposer f) f) {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.sessionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SessionsTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $SessionsTable> {
  $$SessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));
}

class $$SessionsTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $SessionsTable> {
  $$SessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.Expression<T> transactionsRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionsTableAnnotationComposer a) f) {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.sessionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SessionsTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $SessionsTable,
    Session,
    $$SessionsTableFilterComposer,
    $$SessionsTableOrderingComposer,
    $$SessionsTableAnnotationComposer,
    $$SessionsTableCreateCompanionBuilder,
    $$SessionsTableUpdateCompanionBuilder,
    (Session, $$SessionsTableReferences),
    Session,
    drift.PrefetchHooks Function({bool transactionsRefs})> {
  $$SessionsTableTableManager(_$TradingDatabase db, $SessionsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              SessionsCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              SessionsCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$SessionsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({transactionsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (transactionsRefs) db.transactions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionsRefs)
                    await drift.$_getPrefetchedData<Session, $SessionsTable,
                            Transaction>(
                        currentTable: table,
                        referencedTable: $$SessionsTableReferences
                            ._transactionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SessionsTableReferences(db, table, p0)
                                .transactionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.sessionId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SessionsTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $SessionsTable,
    Session,
    $$SessionsTableFilterComposer,
    $$SessionsTableOrderingComposer,
    $$SessionsTableAnnotationComposer,
    $$SessionsTableCreateCompanionBuilder,
    $$SessionsTableUpdateCompanionBuilder,
    (Session, $$SessionsTableReferences),
    Session,
    drift.PrefetchHooks Function({bool transactionsRefs})>;
typedef $$TraderTypesTableCreateCompanionBuilder = TraderTypesCompanion
    Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  required DateTime createdAt,
});
typedef $$TraderTypesTableUpdateCompanionBuilder = TraderTypesCompanion
    Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<DateTime> createdAt,
});

final class $$TraderTypesTableReferences extends drift
    .BaseReferences<_$TradingDatabase, $TraderTypesTable, TraderType> {
  $$TraderTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$TransactionsTable, List<Transaction>>
      _transactionsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactions,
              aliasName: drift.$_aliasNameGenerator(
                  db.traderTypes.id, db.transactions.traderTypeId));

  $$TransactionsTableProcessedTableManager get transactionsRefs {
    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.traderTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_transactionsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TraderTypesTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $TraderTypesTable> {
  $$TraderTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> transactionsRefs(
      drift.Expression<bool> Function($$TransactionsTableFilterComposer f) f) {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.traderTypeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TraderTypesTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $TraderTypesTable> {
  $$TraderTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));
}

class $$TraderTypesTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $TraderTypesTable> {
  $$TraderTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.Expression<T> transactionsRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionsTableAnnotationComposer a) f) {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.traderTypeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TraderTypesTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $TraderTypesTable,
    TraderType,
    $$TraderTypesTableFilterComposer,
    $$TraderTypesTableOrderingComposer,
    $$TraderTypesTableAnnotationComposer,
    $$TraderTypesTableCreateCompanionBuilder,
    $$TraderTypesTableUpdateCompanionBuilder,
    (TraderType, $$TraderTypesTableReferences),
    TraderType,
    drift.PrefetchHooks Function({bool transactionsRefs})> {
  $$TraderTypesTableTableManager(_$TradingDatabase db, $TraderTypesTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TraderTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TraderTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TraderTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              TraderTypesCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              TraderTypesCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TraderTypesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({transactionsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (transactionsRefs) db.transactions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionsRefs)
                    await drift.$_getPrefetchedData<TraderType,
                            $TraderTypesTable, Transaction>(
                        currentTable: table,
                        referencedTable: $$TraderTypesTableReferences
                            ._transactionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TraderTypesTableReferences(db, table, p0)
                                .transactionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.traderTypeId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TraderTypesTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $TraderTypesTable,
    TraderType,
    $$TraderTypesTableFilterComposer,
    $$TraderTypesTableOrderingComposer,
    $$TraderTypesTableAnnotationComposer,
    $$TraderTypesTableCreateCompanionBuilder,
    $$TraderTypesTableUpdateCompanionBuilder,
    (TraderType, $$TraderTypesTableReferences),
    TraderType,
    drift.PrefetchHooks Function({bool transactionsRefs})>;
typedef $$MoodsTableCreateCompanionBuilder = MoodsCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  required DateTime createdAt,
  drift.Value<String?> iconName,
});
typedef $$MoodsTableUpdateCompanionBuilder = MoodsCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<DateTime> createdAt,
  drift.Value<String?> iconName,
});

final class $$MoodsTableReferences
    extends drift.BaseReferences<_$TradingDatabase, $MoodsTable, Mood> {
  $$MoodsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$TransactionsTable, List<Transaction>>
      _transactionsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactions,
              aliasName: drift.$_aliasNameGenerator(
                  db.moods.id, db.transactions.moodId));

  $$TransactionsTableProcessedTableManager get transactionsRefs {
    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.moodId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_transactionsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$MoodsTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $MoodsTable> {
  $$MoodsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get iconName => $composableBuilder(
      column: $table.iconName,
      builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> transactionsRefs(
      drift.Expression<bool> Function($$TransactionsTableFilterComposer f) f) {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.moodId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$MoodsTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $MoodsTable> {
  $$MoodsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get iconName => $composableBuilder(
      column: $table.iconName,
      builder: (column) => drift.ColumnOrderings(column));
}

class $$MoodsTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $MoodsTable> {
  $$MoodsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  drift.GeneratedColumn<String> get iconName =>
      $composableBuilder(column: $table.iconName, builder: (column) => column);

  drift.Expression<T> transactionsRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionsTableAnnotationComposer a) f) {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.moodId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$MoodsTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $MoodsTable,
    Mood,
    $$MoodsTableFilterComposer,
    $$MoodsTableOrderingComposer,
    $$MoodsTableAnnotationComposer,
    $$MoodsTableCreateCompanionBuilder,
    $$MoodsTableUpdateCompanionBuilder,
    (Mood, $$MoodsTableReferences),
    Mood,
    drift.PrefetchHooks Function({bool transactionsRefs})> {
  $$MoodsTableTableManager(_$TradingDatabase db, $MoodsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MoodsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MoodsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MoodsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
            drift.Value<String?> iconName = const drift.Value.absent(),
          }) =>
              MoodsCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
            iconName: iconName,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            required DateTime createdAt,
            drift.Value<String?> iconName = const drift.Value.absent(),
          }) =>
              MoodsCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
            iconName: iconName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$MoodsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({transactionsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (transactionsRefs) db.transactions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionsRefs)
                    await drift.$_getPrefetchedData<Mood, $MoodsTable,
                            Transaction>(
                        currentTable: table,
                        referencedTable:
                            $$MoodsTableReferences._transactionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$MoodsTableReferences(db, table, p0)
                                .transactionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.moodId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$MoodsTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $MoodsTable,
    Mood,
    $$MoodsTableFilterComposer,
    $$MoodsTableOrderingComposer,
    $$MoodsTableAnnotationComposer,
    $$MoodsTableCreateCompanionBuilder,
    $$MoodsTableUpdateCompanionBuilder,
    (Mood, $$MoodsTableReferences),
    Mood,
    drift.PrefetchHooks Function({bool transactionsRefs})>;
typedef $$TransactionsTableCreateCompanionBuilder = TransactionsCompanion
    Function({
  drift.Value<int> id,
  required int accountId,
  required int assetId,
  required DateTime date,
  required int sideId,
  required double quantity,
  required double price,
  drift.Value<double?> notional,
  drift.Value<double> fee,
  drift.Value<double> tax,
  drift.Value<String?> reason,
  required int entryConditionId,
  required int sessionId,
  required int traderTypeId,
  drift.Value<double?> stopLoss,
  drift.Value<double?> exitPrice,
  required int moodId,
  required DateTime createdAt,
});
typedef $$TransactionsTableUpdateCompanionBuilder = TransactionsCompanion
    Function({
  drift.Value<int> id,
  drift.Value<int> accountId,
  drift.Value<int> assetId,
  drift.Value<DateTime> date,
  drift.Value<int> sideId,
  drift.Value<double> quantity,
  drift.Value<double> price,
  drift.Value<double?> notional,
  drift.Value<double> fee,
  drift.Value<double> tax,
  drift.Value<String?> reason,
  drift.Value<int> entryConditionId,
  drift.Value<int> sessionId,
  drift.Value<int> traderTypeId,
  drift.Value<double?> stopLoss,
  drift.Value<double?> exitPrice,
  drift.Value<int> moodId,
  drift.Value<DateTime> createdAt,
});

final class $$TransactionsTableReferences extends drift
    .BaseReferences<_$TradingDatabase, $TransactionsTable, Transaction> {
  $$TransactionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AccountsTable _accountIdTable(_$TradingDatabase db) =>
      db.accounts.createAlias(drift.$_aliasNameGenerator(
          db.transactions.accountId, db.accounts.id));

  $$AccountsTableProcessedTableManager get accountId {
    final $_column = $_itemColumn<int>('account_id')!;

    final manager = $$AccountsTableTableManager($_db, $_db.accounts)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_accountIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $AssetsTable _assetIdTable(_$TradingDatabase db) =>
      db.assets.createAlias(
          drift.$_aliasNameGenerator(db.transactions.assetId, db.assets.id));

  $$AssetsTableProcessedTableManager get assetId {
    final $_column = $_itemColumn<int>('asset_id')!;

    final manager = $$AssetsTableTableManager($_db, $_db.assets)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_assetIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SidesTable _sideIdTable(_$TradingDatabase db) => db.sides.createAlias(
      drift.$_aliasNameGenerator(db.transactions.sideId, db.sides.id));

  $$SidesTableProcessedTableManager get sideId {
    final $_column = $_itemColumn<int>('side_id')!;

    final manager = $$SidesTableTableManager($_db, $_db.sides)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sideIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $EntryConditionsTable _entryConditionIdTable(_$TradingDatabase db) =>
      db.entryConditions.createAlias(drift.$_aliasNameGenerator(
          db.transactions.entryConditionId, db.entryConditions.id));

  $$EntryConditionsTableProcessedTableManager get entryConditionId {
    final $_column = $_itemColumn<int>('entry_condition_id')!;

    final manager =
        $$EntryConditionsTableTableManager($_db, $_db.entryConditions)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_entryConditionIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SessionsTable _sessionIdTable(_$TradingDatabase db) =>
      db.sessions.createAlias(drift.$_aliasNameGenerator(
          db.transactions.sessionId, db.sessions.id));

  $$SessionsTableProcessedTableManager get sessionId {
    final $_column = $_itemColumn<int>('session_id')!;

    final manager = $$SessionsTableTableManager($_db, $_db.sessions)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sessionIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TraderTypesTable _traderTypeIdTable(_$TradingDatabase db) =>
      db.traderTypes.createAlias(drift.$_aliasNameGenerator(
          db.transactions.traderTypeId, db.traderTypes.id));

  $$TraderTypesTableProcessedTableManager get traderTypeId {
    final $_column = $_itemColumn<int>('trader_type_id')!;

    final manager = $$TraderTypesTableTableManager($_db, $_db.traderTypes)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_traderTypeIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $MoodsTable _moodIdTable(_$TradingDatabase db) => db.moods.createAlias(
      drift.$_aliasNameGenerator(db.transactions.moodId, db.moods.id));

  $$MoodsTableProcessedTableManager get moodId {
    final $_column = $_itemColumn<int>('mood_id')!;

    final manager = $$MoodsTableTableManager($_db, $_db.moods)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_moodIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static drift
      .MultiTypedResultKey<$TransactionMediaTable, List<TransactionMediaData>>
      _transactionMediaRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactionMedia,
              aliasName: drift.$_aliasNameGenerator(
                  db.transactions.id, db.transactionMedia.transactionId));

  $$TransactionMediaTableProcessedTableManager get transactionMediaRefs {
    final manager = $$TransactionMediaTableTableManager(
            $_db, $_db.transactionMedia)
        .filter((f) => f.transactionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_transactionMediaRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$RemarksTable, List<Remark>>
      _remarksRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.remarks,
              aliasName: drift.$_aliasNameGenerator(
                  db.transactions.id, db.remarks.transactionId));

  $$RemarksTableProcessedTableManager get remarksRefs {
    final manager = $$RemarksTableTableManager($_db, $_db.remarks)
        .filter((f) => f.transactionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_remarksRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$TransactionTagsTable, List<TransactionTag>>
      _transactionTagsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactionTags,
              aliasName: drift.$_aliasNameGenerator(
                  db.transactions.id, db.transactionTags.transactionId));

  $$TransactionTagsTableProcessedTableManager get transactionTagsRefs {
    final manager = $$TransactionTagsTableTableManager(
            $_db, $_db.transactionTags)
        .filter((f) => f.transactionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_transactionTagsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static drift.MultiTypedResultKey<$CategoriesTable, List<Category>>
      _categoriesRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.categories,
              aliasName: drift.$_aliasNameGenerator(
                  db.transactions.id, db.categories.transactionId));

  $$CategoriesTableProcessedTableManager get categoriesRefs {
    final manager = $$CategoriesTableTableManager($_db, $_db.categories)
        .filter((f) => f.transactionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_categoriesRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TransactionsTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $TransactionsTable> {
  $$TransactionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get quantity => $composableBuilder(
      column: $table.quantity,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get notional => $composableBuilder(
      column: $table.notional,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get fee => $composableBuilder(
      column: $table.fee, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get tax => $composableBuilder(
      column: $table.tax, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get reason => $composableBuilder(
      column: $table.reason, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get stopLoss => $composableBuilder(
      column: $table.stopLoss,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<double> get exitPrice => $composableBuilder(
      column: $table.exitPrice,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  $$AccountsTableFilterComposer get accountId {
    final $$AccountsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.accountId,
        referencedTable: $db.accounts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountsTableFilterComposer(
              $db: $db,
              $table: $db.accounts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AssetsTableFilterComposer get assetId {
    final $$AssetsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.assetId,
        referencedTable: $db.assets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTableFilterComposer(
              $db: $db,
              $table: $db.assets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SidesTableFilterComposer get sideId {
    final $$SidesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sideId,
        referencedTable: $db.sides,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SidesTableFilterComposer(
              $db: $db,
              $table: $db.sides,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$EntryConditionsTableFilterComposer get entryConditionId {
    final $$EntryConditionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.entryConditionId,
        referencedTable: $db.entryConditions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EntryConditionsTableFilterComposer(
              $db: $db,
              $table: $db.entryConditions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SessionsTableFilterComposer get sessionId {
    final $$SessionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sessionId,
        referencedTable: $db.sessions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SessionsTableFilterComposer(
              $db: $db,
              $table: $db.sessions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TraderTypesTableFilterComposer get traderTypeId {
    final $$TraderTypesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.traderTypeId,
        referencedTable: $db.traderTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TraderTypesTableFilterComposer(
              $db: $db,
              $table: $db.traderTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$MoodsTableFilterComposer get moodId {
    final $$MoodsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.moodId,
        referencedTable: $db.moods,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$MoodsTableFilterComposer(
              $db: $db,
              $table: $db.moods,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<bool> transactionMediaRefs(
      drift.Expression<bool> Function($$TransactionMediaTableFilterComposer f)
          f) {
    final $$TransactionMediaTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactionMedia,
        getReferencedColumn: (t) => t.transactionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionMediaTableFilterComposer(
              $db: $db,
              $table: $db.transactionMedia,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> remarksRefs(
      drift.Expression<bool> Function($$RemarksTableFilterComposer f) f) {
    final $$RemarksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.remarks,
        getReferencedColumn: (t) => t.transactionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RemarksTableFilterComposer(
              $db: $db,
              $table: $db.remarks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> transactionTagsRefs(
      drift.Expression<bool> Function($$TransactionTagsTableFilterComposer f)
          f) {
    final $$TransactionTagsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactionTags,
        getReferencedColumn: (t) => t.transactionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionTagsTableFilterComposer(
              $db: $db,
              $table: $db.transactionTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<bool> categoriesRefs(
      drift.Expression<bool> Function($$CategoriesTableFilterComposer f) f) {
    final $$CategoriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.categories,
        getReferencedColumn: (t) => t.transactionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableFilterComposer(
              $db: $db,
              $table: $db.categories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TransactionsTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $TransactionsTable> {
  $$TransactionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get quantity => $composableBuilder(
      column: $table.quantity,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get notional => $composableBuilder(
      column: $table.notional,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get fee => $composableBuilder(
      column: $table.fee, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get tax => $composableBuilder(
      column: $table.tax, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get reason => $composableBuilder(
      column: $table.reason,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get stopLoss => $composableBuilder(
      column: $table.stopLoss,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<double> get exitPrice => $composableBuilder(
      column: $table.exitPrice,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));

  $$AccountsTableOrderingComposer get accountId {
    final $$AccountsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.accountId,
        referencedTable: $db.accounts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountsTableOrderingComposer(
              $db: $db,
              $table: $db.accounts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AssetsTableOrderingComposer get assetId {
    final $$AssetsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.assetId,
        referencedTable: $db.assets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTableOrderingComposer(
              $db: $db,
              $table: $db.assets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SidesTableOrderingComposer get sideId {
    final $$SidesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sideId,
        referencedTable: $db.sides,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SidesTableOrderingComposer(
              $db: $db,
              $table: $db.sides,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$EntryConditionsTableOrderingComposer get entryConditionId {
    final $$EntryConditionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.entryConditionId,
        referencedTable: $db.entryConditions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EntryConditionsTableOrderingComposer(
              $db: $db,
              $table: $db.entryConditions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SessionsTableOrderingComposer get sessionId {
    final $$SessionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sessionId,
        referencedTable: $db.sessions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SessionsTableOrderingComposer(
              $db: $db,
              $table: $db.sessions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TraderTypesTableOrderingComposer get traderTypeId {
    final $$TraderTypesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.traderTypeId,
        referencedTable: $db.traderTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TraderTypesTableOrderingComposer(
              $db: $db,
              $table: $db.traderTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$MoodsTableOrderingComposer get moodId {
    final $$MoodsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.moodId,
        referencedTable: $db.moods,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$MoodsTableOrderingComposer(
              $db: $db,
              $table: $db.moods,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionsTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $TransactionsTable> {
  $$TransactionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  drift.GeneratedColumn<double> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  drift.GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  drift.GeneratedColumn<double> get notional =>
      $composableBuilder(column: $table.notional, builder: (column) => column);

  drift.GeneratedColumn<double> get fee =>
      $composableBuilder(column: $table.fee, builder: (column) => column);

  drift.GeneratedColumn<double> get tax =>
      $composableBuilder(column: $table.tax, builder: (column) => column);

  drift.GeneratedColumn<String> get reason =>
      $composableBuilder(column: $table.reason, builder: (column) => column);

  drift.GeneratedColumn<double> get stopLoss =>
      $composableBuilder(column: $table.stopLoss, builder: (column) => column);

  drift.GeneratedColumn<double> get exitPrice =>
      $composableBuilder(column: $table.exitPrice, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$AccountsTableAnnotationComposer get accountId {
    final $$AccountsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.accountId,
        referencedTable: $db.accounts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AccountsTableAnnotationComposer(
              $db: $db,
              $table: $db.accounts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AssetsTableAnnotationComposer get assetId {
    final $$AssetsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.assetId,
        referencedTable: $db.assets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssetsTableAnnotationComposer(
              $db: $db,
              $table: $db.assets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SidesTableAnnotationComposer get sideId {
    final $$SidesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sideId,
        referencedTable: $db.sides,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SidesTableAnnotationComposer(
              $db: $db,
              $table: $db.sides,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$EntryConditionsTableAnnotationComposer get entryConditionId {
    final $$EntryConditionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.entryConditionId,
        referencedTable: $db.entryConditions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EntryConditionsTableAnnotationComposer(
              $db: $db,
              $table: $db.entryConditions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SessionsTableAnnotationComposer get sessionId {
    final $$SessionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sessionId,
        referencedTable: $db.sessions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SessionsTableAnnotationComposer(
              $db: $db,
              $table: $db.sessions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TraderTypesTableAnnotationComposer get traderTypeId {
    final $$TraderTypesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.traderTypeId,
        referencedTable: $db.traderTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TraderTypesTableAnnotationComposer(
              $db: $db,
              $table: $db.traderTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$MoodsTableAnnotationComposer get moodId {
    final $$MoodsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.moodId,
        referencedTable: $db.moods,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$MoodsTableAnnotationComposer(
              $db: $db,
              $table: $db.moods,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<T> transactionMediaRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionMediaTableAnnotationComposer a)
          f) {
    final $$TransactionMediaTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactionMedia,
        getReferencedColumn: (t) => t.transactionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionMediaTableAnnotationComposer(
              $db: $db,
              $table: $db.transactionMedia,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> remarksRefs<T extends Object>(
      drift.Expression<T> Function($$RemarksTableAnnotationComposer a) f) {
    final $$RemarksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.remarks,
        getReferencedColumn: (t) => t.transactionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RemarksTableAnnotationComposer(
              $db: $db,
              $table: $db.remarks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> transactionTagsRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionTagsTableAnnotationComposer a)
          f) {
    final $$TransactionTagsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactionTags,
        getReferencedColumn: (t) => t.transactionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionTagsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactionTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  drift.Expression<T> categoriesRefs<T extends Object>(
      drift.Expression<T> Function($$CategoriesTableAnnotationComposer a) f) {
    final $$CategoriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.categories,
        getReferencedColumn: (t) => t.transactionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableAnnotationComposer(
              $db: $db,
              $table: $db.categories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TransactionsTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $TransactionsTable,
    Transaction,
    $$TransactionsTableFilterComposer,
    $$TransactionsTableOrderingComposer,
    $$TransactionsTableAnnotationComposer,
    $$TransactionsTableCreateCompanionBuilder,
    $$TransactionsTableUpdateCompanionBuilder,
    (Transaction, $$TransactionsTableReferences),
    Transaction,
    drift.PrefetchHooks Function(
        {bool accountId,
        bool assetId,
        bool sideId,
        bool entryConditionId,
        bool sessionId,
        bool traderTypeId,
        bool moodId,
        bool transactionMediaRefs,
        bool remarksRefs,
        bool transactionTagsRefs,
        bool categoriesRefs})> {
  $$TransactionsTableTableManager(
      _$TradingDatabase db, $TransactionsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<int> accountId = const drift.Value.absent(),
            drift.Value<int> assetId = const drift.Value.absent(),
            drift.Value<DateTime> date = const drift.Value.absent(),
            drift.Value<int> sideId = const drift.Value.absent(),
            drift.Value<double> quantity = const drift.Value.absent(),
            drift.Value<double> price = const drift.Value.absent(),
            drift.Value<double?> notional = const drift.Value.absent(),
            drift.Value<double> fee = const drift.Value.absent(),
            drift.Value<double> tax = const drift.Value.absent(),
            drift.Value<String?> reason = const drift.Value.absent(),
            drift.Value<int> entryConditionId = const drift.Value.absent(),
            drift.Value<int> sessionId = const drift.Value.absent(),
            drift.Value<int> traderTypeId = const drift.Value.absent(),
            drift.Value<double?> stopLoss = const drift.Value.absent(),
            drift.Value<double?> exitPrice = const drift.Value.absent(),
            drift.Value<int> moodId = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              TransactionsCompanion(
            id: id,
            accountId: accountId,
            assetId: assetId,
            date: date,
            sideId: sideId,
            quantity: quantity,
            price: price,
            notional: notional,
            fee: fee,
            tax: tax,
            reason: reason,
            entryConditionId: entryConditionId,
            sessionId: sessionId,
            traderTypeId: traderTypeId,
            stopLoss: stopLoss,
            exitPrice: exitPrice,
            moodId: moodId,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            required int accountId,
            required int assetId,
            required DateTime date,
            required int sideId,
            required double quantity,
            required double price,
            drift.Value<double?> notional = const drift.Value.absent(),
            drift.Value<double> fee = const drift.Value.absent(),
            drift.Value<double> tax = const drift.Value.absent(),
            drift.Value<String?> reason = const drift.Value.absent(),
            required int entryConditionId,
            required int sessionId,
            required int traderTypeId,
            drift.Value<double?> stopLoss = const drift.Value.absent(),
            drift.Value<double?> exitPrice = const drift.Value.absent(),
            required int moodId,
            required DateTime createdAt,
          }) =>
              TransactionsCompanion.insert(
            id: id,
            accountId: accountId,
            assetId: assetId,
            date: date,
            sideId: sideId,
            quantity: quantity,
            price: price,
            notional: notional,
            fee: fee,
            tax: tax,
            reason: reason,
            entryConditionId: entryConditionId,
            sessionId: sessionId,
            traderTypeId: traderTypeId,
            stopLoss: stopLoss,
            exitPrice: exitPrice,
            moodId: moodId,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TransactionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {accountId = false,
              assetId = false,
              sideId = false,
              entryConditionId = false,
              sessionId = false,
              traderTypeId = false,
              moodId = false,
              transactionMediaRefs = false,
              remarksRefs = false,
              transactionTagsRefs = false,
              categoriesRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (transactionMediaRefs) db.transactionMedia,
                if (remarksRefs) db.remarks,
                if (transactionTagsRefs) db.transactionTags,
                if (categoriesRefs) db.categories
              ],
              addJoins: <
                  T extends drift.TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (accountId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.accountId,
                    referencedTable:
                        $$TransactionsTableReferences._accountIdTable(db),
                    referencedColumn:
                        $$TransactionsTableReferences._accountIdTable(db).id,
                  ) as T;
                }
                if (assetId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.assetId,
                    referencedTable:
                        $$TransactionsTableReferences._assetIdTable(db),
                    referencedColumn:
                        $$TransactionsTableReferences._assetIdTable(db).id,
                  ) as T;
                }
                if (sideId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sideId,
                    referencedTable:
                        $$TransactionsTableReferences._sideIdTable(db),
                    referencedColumn:
                        $$TransactionsTableReferences._sideIdTable(db).id,
                  ) as T;
                }
                if (entryConditionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.entryConditionId,
                    referencedTable: $$TransactionsTableReferences
                        ._entryConditionIdTable(db),
                    referencedColumn: $$TransactionsTableReferences
                        ._entryConditionIdTable(db)
                        .id,
                  ) as T;
                }
                if (sessionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sessionId,
                    referencedTable:
                        $$TransactionsTableReferences._sessionIdTable(db),
                    referencedColumn:
                        $$TransactionsTableReferences._sessionIdTable(db).id,
                  ) as T;
                }
                if (traderTypeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.traderTypeId,
                    referencedTable:
                        $$TransactionsTableReferences._traderTypeIdTable(db),
                    referencedColumn:
                        $$TransactionsTableReferences._traderTypeIdTable(db).id,
                  ) as T;
                }
                if (moodId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.moodId,
                    referencedTable:
                        $$TransactionsTableReferences._moodIdTable(db),
                    referencedColumn:
                        $$TransactionsTableReferences._moodIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionMediaRefs)
                    await drift.$_getPrefetchedData<Transaction,
                            $TransactionsTable, TransactionMediaData>(
                        currentTable: table,
                        referencedTable: $$TransactionsTableReferences
                            ._transactionMediaRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TransactionsTableReferences(db, table, p0)
                                .transactionMediaRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.transactionId == item.id),
                        typedResults: items),
                  if (remarksRefs)
                    await drift.$_getPrefetchedData<Transaction,
                            $TransactionsTable, Remark>(
                        currentTable: table,
                        referencedTable:
                            $$TransactionsTableReferences._remarksRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TransactionsTableReferences(db, table, p0)
                                .remarksRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.transactionId == item.id),
                        typedResults: items),
                  if (transactionTagsRefs)
                    await drift.$_getPrefetchedData<Transaction,
                            $TransactionsTable, TransactionTag>(
                        currentTable: table,
                        referencedTable: $$TransactionsTableReferences
                            ._transactionTagsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TransactionsTableReferences(db, table, p0)
                                .transactionTagsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.transactionId == item.id),
                        typedResults: items),
                  if (categoriesRefs)
                    await drift.$_getPrefetchedData<Transaction,
                            $TransactionsTable, Category>(
                        currentTable: table,
                        referencedTable: $$TransactionsTableReferences
                            ._categoriesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TransactionsTableReferences(db, table, p0)
                                .categoriesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.transactionId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TransactionsTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $TransactionsTable,
    Transaction,
    $$TransactionsTableFilterComposer,
    $$TransactionsTableOrderingComposer,
    $$TransactionsTableAnnotationComposer,
    $$TransactionsTableCreateCompanionBuilder,
    $$TransactionsTableUpdateCompanionBuilder,
    (Transaction, $$TransactionsTableReferences),
    Transaction,
    drift.PrefetchHooks Function(
        {bool accountId,
        bool assetId,
        bool sideId,
        bool entryConditionId,
        bool sessionId,
        bool traderTypeId,
        bool moodId,
        bool transactionMediaRefs,
        bool remarksRefs,
        bool transactionTagsRefs,
        bool categoriesRefs})>;
typedef $$TransactionMediaTableCreateCompanionBuilder
    = TransactionMediaCompanion Function({
  drift.Value<int> id,
  required int transactionId,
  required String mediaType,
  required String filePath,
  drift.Value<String?> note,
  required DateTime createdAt,
});
typedef $$TransactionMediaTableUpdateCompanionBuilder
    = TransactionMediaCompanion Function({
  drift.Value<int> id,
  drift.Value<int> transactionId,
  drift.Value<String> mediaType,
  drift.Value<String> filePath,
  drift.Value<String?> note,
  drift.Value<DateTime> createdAt,
});

final class $$TransactionMediaTableReferences extends drift.BaseReferences<
    _$TradingDatabase, $TransactionMediaTable, TransactionMediaData> {
  $$TransactionMediaTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $TransactionsTable _transactionIdTable(_$TradingDatabase db) =>
      db.transactions.createAlias(drift.$_aliasNameGenerator(
          db.transactionMedia.transactionId, db.transactions.id));

  $$TransactionsTableProcessedTableManager get transactionId {
    final $_column = $_itemColumn<int>('transaction_id')!;

    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_transactionIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TransactionMediaTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $TransactionMediaTable> {
  $$TransactionMediaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get mediaType => $composableBuilder(
      column: $table.mediaType,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get filePath => $composableBuilder(
      column: $table.filePath,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  $$TransactionsTableFilterComposer get transactionId {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionMediaTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $TransactionMediaTable> {
  $$TransactionMediaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get mediaType => $composableBuilder(
      column: $table.mediaType,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get filePath => $composableBuilder(
      column: $table.filePath,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));

  $$TransactionsTableOrderingComposer get transactionId {
    final $$TransactionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableOrderingComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionMediaTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $TransactionMediaTable> {
  $$TransactionMediaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get mediaType =>
      $composableBuilder(column: $table.mediaType, builder: (column) => column);

  drift.GeneratedColumn<String> get filePath =>
      $composableBuilder(column: $table.filePath, builder: (column) => column);

  drift.GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$TransactionsTableAnnotationComposer get transactionId {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionMediaTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $TransactionMediaTable,
    TransactionMediaData,
    $$TransactionMediaTableFilterComposer,
    $$TransactionMediaTableOrderingComposer,
    $$TransactionMediaTableAnnotationComposer,
    $$TransactionMediaTableCreateCompanionBuilder,
    $$TransactionMediaTableUpdateCompanionBuilder,
    (TransactionMediaData, $$TransactionMediaTableReferences),
    TransactionMediaData,
    drift.PrefetchHooks Function({bool transactionId})> {
  $$TransactionMediaTableTableManager(
      _$TradingDatabase db, $TransactionMediaTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionMediaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionMediaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionMediaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<int> transactionId = const drift.Value.absent(),
            drift.Value<String> mediaType = const drift.Value.absent(),
            drift.Value<String> filePath = const drift.Value.absent(),
            drift.Value<String?> note = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              TransactionMediaCompanion(
            id: id,
            transactionId: transactionId,
            mediaType: mediaType,
            filePath: filePath,
            note: note,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            required int transactionId,
            required String mediaType,
            required String filePath,
            drift.Value<String?> note = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              TransactionMediaCompanion.insert(
            id: id,
            transactionId: transactionId,
            mediaType: mediaType,
            filePath: filePath,
            note: note,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TransactionMediaTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({transactionId = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends drift.TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (transactionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.transactionId,
                    referencedTable: $$TransactionMediaTableReferences
                        ._transactionIdTable(db),
                    referencedColumn: $$TransactionMediaTableReferences
                        ._transactionIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TransactionMediaTableProcessedTableManager
    = drift.ProcessedTableManager<
        _$TradingDatabase,
        $TransactionMediaTable,
        TransactionMediaData,
        $$TransactionMediaTableFilterComposer,
        $$TransactionMediaTableOrderingComposer,
        $$TransactionMediaTableAnnotationComposer,
        $$TransactionMediaTableCreateCompanionBuilder,
        $$TransactionMediaTableUpdateCompanionBuilder,
        (TransactionMediaData, $$TransactionMediaTableReferences),
        TransactionMediaData,
        drift.PrefetchHooks Function({bool transactionId})>;
typedef $$RemarksTableCreateCompanionBuilder = RemarksCompanion Function({
  drift.Value<int> id,
  required int transactionId,
  drift.Value<String?> remarksText,
  required DateTime createdAt,
});
typedef $$RemarksTableUpdateCompanionBuilder = RemarksCompanion Function({
  drift.Value<int> id,
  drift.Value<int> transactionId,
  drift.Value<String?> remarksText,
  drift.Value<DateTime> createdAt,
});

final class $$RemarksTableReferences
    extends drift.BaseReferences<_$TradingDatabase, $RemarksTable, Remark> {
  $$RemarksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TransactionsTable _transactionIdTable(_$TradingDatabase db) =>
      db.transactions.createAlias(drift.$_aliasNameGenerator(
          db.remarks.transactionId, db.transactions.id));

  $$TransactionsTableProcessedTableManager get transactionId {
    final $_column = $_itemColumn<int>('transaction_id')!;

    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_transactionIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static drift.MultiTypedResultKey<$RemarkMediaTable, List<RemarkMediaData>>
      _remarkMediaRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.remarkMedia,
              aliasName: drift.$_aliasNameGenerator(
                  db.remarks.id, db.remarkMedia.remarkId));

  $$RemarkMediaTableProcessedTableManager get remarkMediaRefs {
    final manager = $$RemarkMediaTableTableManager($_db, $_db.remarkMedia)
        .filter((f) => f.remarkId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_remarkMediaRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$RemarksTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $RemarksTable> {
  $$RemarksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get remarksText => $composableBuilder(
      column: $table.remarksText,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  $$TransactionsTableFilterComposer get transactionId {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<bool> remarkMediaRefs(
      drift.Expression<bool> Function($$RemarkMediaTableFilterComposer f) f) {
    final $$RemarkMediaTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.remarkMedia,
        getReferencedColumn: (t) => t.remarkId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RemarkMediaTableFilterComposer(
              $db: $db,
              $table: $db.remarkMedia,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RemarksTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $RemarksTable> {
  $$RemarksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get remarksText => $composableBuilder(
      column: $table.remarksText,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));

  $$TransactionsTableOrderingComposer get transactionId {
    final $$TransactionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableOrderingComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RemarksTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $RemarksTable> {
  $$RemarksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get remarksText => $composableBuilder(
      column: $table.remarksText, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$TransactionsTableAnnotationComposer get transactionId {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  drift.Expression<T> remarkMediaRefs<T extends Object>(
      drift.Expression<T> Function($$RemarkMediaTableAnnotationComposer a) f) {
    final $$RemarkMediaTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.remarkMedia,
        getReferencedColumn: (t) => t.remarkId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RemarkMediaTableAnnotationComposer(
              $db: $db,
              $table: $db.remarkMedia,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RemarksTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $RemarksTable,
    Remark,
    $$RemarksTableFilterComposer,
    $$RemarksTableOrderingComposer,
    $$RemarksTableAnnotationComposer,
    $$RemarksTableCreateCompanionBuilder,
    $$RemarksTableUpdateCompanionBuilder,
    (Remark, $$RemarksTableReferences),
    Remark,
    drift.PrefetchHooks Function({bool transactionId, bool remarkMediaRefs})> {
  $$RemarksTableTableManager(_$TradingDatabase db, $RemarksTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RemarksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RemarksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RemarksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<int> transactionId = const drift.Value.absent(),
            drift.Value<String?> remarksText = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              RemarksCompanion(
            id: id,
            transactionId: transactionId,
            remarksText: remarksText,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            required int transactionId,
            drift.Value<String?> remarksText = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              RemarksCompanion.insert(
            id: id,
            transactionId: transactionId,
            remarksText: remarksText,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$RemarksTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {transactionId = false, remarkMediaRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (remarkMediaRefs) db.remarkMedia],
              addJoins: <
                  T extends drift.TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (transactionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.transactionId,
                    referencedTable:
                        $$RemarksTableReferences._transactionIdTable(db),
                    referencedColumn:
                        $$RemarksTableReferences._transactionIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (remarkMediaRefs)
                    await drift.$_getPrefetchedData<Remark, $RemarksTable,
                            RemarkMediaData>(
                        currentTable: table,
                        referencedTable:
                            $$RemarksTableReferences._remarkMediaRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RemarksTableReferences(db, table, p0)
                                .remarkMediaRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.remarkId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$RemarksTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $RemarksTable,
    Remark,
    $$RemarksTableFilterComposer,
    $$RemarksTableOrderingComposer,
    $$RemarksTableAnnotationComposer,
    $$RemarksTableCreateCompanionBuilder,
    $$RemarksTableUpdateCompanionBuilder,
    (Remark, $$RemarksTableReferences),
    Remark,
    drift.PrefetchHooks Function({bool transactionId, bool remarkMediaRefs})>;
typedef $$RemarkMediaTableCreateCompanionBuilder = RemarkMediaCompanion
    Function({
  drift.Value<int> id,
  required int remarkId,
  required String mediaType,
  required String filePath,
  required DateTime createdAt,
});
typedef $$RemarkMediaTableUpdateCompanionBuilder = RemarkMediaCompanion
    Function({
  drift.Value<int> id,
  drift.Value<int> remarkId,
  drift.Value<String> mediaType,
  drift.Value<String> filePath,
  drift.Value<DateTime> createdAt,
});

final class $$RemarkMediaTableReferences extends drift
    .BaseReferences<_$TradingDatabase, $RemarkMediaTable, RemarkMediaData> {
  $$RemarkMediaTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RemarksTable _remarkIdTable(_$TradingDatabase db) =>
      db.remarks.createAlias(
          drift.$_aliasNameGenerator(db.remarkMedia.remarkId, db.remarks.id));

  $$RemarksTableProcessedTableManager get remarkId {
    final $_column = $_itemColumn<int>('remark_id')!;

    final manager = $$RemarksTableTableManager($_db, $_db.remarks)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_remarkIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$RemarkMediaTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $RemarkMediaTable> {
  $$RemarkMediaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get mediaType => $composableBuilder(
      column: $table.mediaType,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get filePath => $composableBuilder(
      column: $table.filePath,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  $$RemarksTableFilterComposer get remarkId {
    final $$RemarksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.remarkId,
        referencedTable: $db.remarks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RemarksTableFilterComposer(
              $db: $db,
              $table: $db.remarks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RemarkMediaTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $RemarkMediaTable> {
  $$RemarkMediaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get mediaType => $composableBuilder(
      column: $table.mediaType,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get filePath => $composableBuilder(
      column: $table.filePath,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));

  $$RemarksTableOrderingComposer get remarkId {
    final $$RemarksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.remarkId,
        referencedTable: $db.remarks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RemarksTableOrderingComposer(
              $db: $db,
              $table: $db.remarks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RemarkMediaTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $RemarkMediaTable> {
  $$RemarkMediaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get mediaType =>
      $composableBuilder(column: $table.mediaType, builder: (column) => column);

  drift.GeneratedColumn<String> get filePath =>
      $composableBuilder(column: $table.filePath, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RemarksTableAnnotationComposer get remarkId {
    final $$RemarksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.remarkId,
        referencedTable: $db.remarks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RemarksTableAnnotationComposer(
              $db: $db,
              $table: $db.remarks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RemarkMediaTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $RemarkMediaTable,
    RemarkMediaData,
    $$RemarkMediaTableFilterComposer,
    $$RemarkMediaTableOrderingComposer,
    $$RemarkMediaTableAnnotationComposer,
    $$RemarkMediaTableCreateCompanionBuilder,
    $$RemarkMediaTableUpdateCompanionBuilder,
    (RemarkMediaData, $$RemarkMediaTableReferences),
    RemarkMediaData,
    drift.PrefetchHooks Function({bool remarkId})> {
  $$RemarkMediaTableTableManager(_$TradingDatabase db, $RemarkMediaTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RemarkMediaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RemarkMediaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RemarkMediaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<int> remarkId = const drift.Value.absent(),
            drift.Value<String> mediaType = const drift.Value.absent(),
            drift.Value<String> filePath = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              RemarkMediaCompanion(
            id: id,
            remarkId: remarkId,
            mediaType: mediaType,
            filePath: filePath,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            required int remarkId,
            required String mediaType,
            required String filePath,
            required DateTime createdAt,
          }) =>
              RemarkMediaCompanion.insert(
            id: id,
            remarkId: remarkId,
            mediaType: mediaType,
            filePath: filePath,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$RemarkMediaTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({remarkId = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends drift.TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (remarkId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.remarkId,
                    referencedTable:
                        $$RemarkMediaTableReferences._remarkIdTable(db),
                    referencedColumn:
                        $$RemarkMediaTableReferences._remarkIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$RemarkMediaTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $RemarkMediaTable,
    RemarkMediaData,
    $$RemarkMediaTableFilterComposer,
    $$RemarkMediaTableOrderingComposer,
    $$RemarkMediaTableAnnotationComposer,
    $$RemarkMediaTableCreateCompanionBuilder,
    $$RemarkMediaTableUpdateCompanionBuilder,
    (RemarkMediaData, $$RemarkMediaTableReferences),
    RemarkMediaData,
    drift.PrefetchHooks Function({bool remarkId})>;
typedef $$TagsTableCreateCompanionBuilder = TagsCompanion Function({
  drift.Value<int> id,
  required String name,
  drift.Value<String?> color,
});
typedef $$TagsTableUpdateCompanionBuilder = TagsCompanion Function({
  drift.Value<int> id,
  drift.Value<String> name,
  drift.Value<String?> color,
});

final class $$TagsTableReferences
    extends drift.BaseReferences<_$TradingDatabase, $TagsTable, Tag> {
  $$TagsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static drift.MultiTypedResultKey<$TransactionTagsTable, List<TransactionTag>>
      _transactionTagsRefsTable(_$TradingDatabase db) =>
          drift.MultiTypedResultKey.fromTable(db.transactionTags,
              aliasName: drift.$_aliasNameGenerator(
                  db.tags.id, db.transactionTags.tagId));

  $$TransactionTagsTableProcessedTableManager get transactionTagsRefs {
    final manager =
        $$TransactionTagsTableTableManager($_db, $_db.transactionTags)
            .filter((f) => f.tagId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_transactionTagsRefsTable($_db));
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TagsTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $TagsTable> {
  $$TagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => drift.ColumnFilters(column));

  drift.Expression<bool> transactionTagsRefs(
      drift.Expression<bool> Function($$TransactionTagsTableFilterComposer f)
          f) {
    final $$TransactionTagsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactionTags,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionTagsTableFilterComposer(
              $db: $db,
              $table: $db.transactionTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TagsTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $TagsTable> {
  $$TagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => drift.ColumnOrderings(column));
}

class $$TagsTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $TagsTable> {
  $$TagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  drift.Expression<T> transactionTagsRefs<T extends Object>(
      drift.Expression<T> Function($$TransactionTagsTableAnnotationComposer a)
          f) {
    final $$TransactionTagsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactionTags,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionTagsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactionTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TagsTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $TagsTable,
    Tag,
    $$TagsTableFilterComposer,
    $$TagsTableOrderingComposer,
    $$TagsTableAnnotationComposer,
    $$TagsTableCreateCompanionBuilder,
    $$TagsTableUpdateCompanionBuilder,
    (Tag, $$TagsTableReferences),
    Tag,
    drift.PrefetchHooks Function({bool transactionTagsRefs})> {
  $$TagsTableTableManager(_$TradingDatabase db, $TagsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String> name = const drift.Value.absent(),
            drift.Value<String?> color = const drift.Value.absent(),
          }) =>
              TagsCompanion(
            id: id,
            name: name,
            color: color,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            required String name,
            drift.Value<String?> color = const drift.Value.absent(),
          }) =>
              TagsCompanion.insert(
            id: id,
            name: name,
            color: color,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TagsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({transactionTagsRefs = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (transactionTagsRefs) db.transactionTags
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionTagsRefs)
                    await drift
                        .$_getPrefetchedData<Tag, $TagsTable, TransactionTag>(
                            currentTable: table,
                            referencedTable: $$TagsTableReferences
                                ._transactionTagsRefsTable(db),
                            managerFromTypedResult: (p0) =>
                                $$TagsTableReferences(db, table, p0)
                                    .transactionTagsRefs,
                            referencedItemsForCurrentItem:
                                (item, referencedItems) => referencedItems
                                    .where((e) => e.tagId == item.id),
                            typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TagsTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $TagsTable,
    Tag,
    $$TagsTableFilterComposer,
    $$TagsTableOrderingComposer,
    $$TagsTableAnnotationComposer,
    $$TagsTableCreateCompanionBuilder,
    $$TagsTableUpdateCompanionBuilder,
    (Tag, $$TagsTableReferences),
    Tag,
    drift.PrefetchHooks Function({bool transactionTagsRefs})>;
typedef $$TransactionTagsTableCreateCompanionBuilder = TransactionTagsCompanion
    Function({
  required int transactionId,
  required int tagId,
  drift.Value<int> rowid,
});
typedef $$TransactionTagsTableUpdateCompanionBuilder = TransactionTagsCompanion
    Function({
  drift.Value<int> transactionId,
  drift.Value<int> tagId,
  drift.Value<int> rowid,
});

final class $$TransactionTagsTableReferences extends drift
    .BaseReferences<_$TradingDatabase, $TransactionTagsTable, TransactionTag> {
  $$TransactionTagsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $TransactionsTable _transactionIdTable(_$TradingDatabase db) =>
      db.transactions.createAlias(drift.$_aliasNameGenerator(
          db.transactionTags.transactionId, db.transactions.id));

  $$TransactionsTableProcessedTableManager get transactionId {
    final $_column = $_itemColumn<int>('transaction_id')!;

    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_transactionIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TagsTable _tagIdTable(_$TradingDatabase db) => db.tags.createAlias(
      drift.$_aliasNameGenerator(db.transactionTags.tagId, db.tags.id));

  $$TagsTableProcessedTableManager get tagId {
    final $_column = $_itemColumn<int>('tag_id')!;

    final manager = $$TagsTableTableManager($_db, $_db.tags)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tagIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TransactionTagsTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $TransactionTagsTable> {
  $$TransactionTagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TransactionsTableFilterComposer get transactionId {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TagsTableFilterComposer get tagId {
    final $$TagsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.tags,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagsTableFilterComposer(
              $db: $db,
              $table: $db.tags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionTagsTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $TransactionTagsTable> {
  $$TransactionTagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TransactionsTableOrderingComposer get transactionId {
    final $$TransactionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableOrderingComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TagsTableOrderingComposer get tagId {
    final $$TagsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.tags,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagsTableOrderingComposer(
              $db: $db,
              $table: $db.tags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionTagsTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $TransactionTagsTable> {
  $$TransactionTagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TransactionsTableAnnotationComposer get transactionId {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TagsTableAnnotationComposer get tagId {
    final $$TagsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.tags,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagsTableAnnotationComposer(
              $db: $db,
              $table: $db.tags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionTagsTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $TransactionTagsTable,
    TransactionTag,
    $$TransactionTagsTableFilterComposer,
    $$TransactionTagsTableOrderingComposer,
    $$TransactionTagsTableAnnotationComposer,
    $$TransactionTagsTableCreateCompanionBuilder,
    $$TransactionTagsTableUpdateCompanionBuilder,
    (TransactionTag, $$TransactionTagsTableReferences),
    TransactionTag,
    drift.PrefetchHooks Function({bool transactionId, bool tagId})> {
  $$TransactionTagsTableTableManager(
      _$TradingDatabase db, $TransactionTagsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionTagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionTagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionTagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> transactionId = const drift.Value.absent(),
            drift.Value<int> tagId = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              TransactionTagsCompanion(
            transactionId: transactionId,
            tagId: tagId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int transactionId,
            required int tagId,
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              TransactionTagsCompanion.insert(
            transactionId: transactionId,
            tagId: tagId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TransactionTagsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({transactionId = false, tagId = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends drift.TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (transactionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.transactionId,
                    referencedTable: $$TransactionTagsTableReferences
                        ._transactionIdTable(db),
                    referencedColumn: $$TransactionTagsTableReferences
                        ._transactionIdTable(db)
                        .id,
                  ) as T;
                }
                if (tagId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.tagId,
                    referencedTable:
                        $$TransactionTagsTableReferences._tagIdTable(db),
                    referencedColumn:
                        $$TransactionTagsTableReferences._tagIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TransactionTagsTableProcessedTableManager
    = drift.ProcessedTableManager<
        _$TradingDatabase,
        $TransactionTagsTable,
        TransactionTag,
        $$TransactionTagsTableFilterComposer,
        $$TransactionTagsTableOrderingComposer,
        $$TransactionTagsTableAnnotationComposer,
        $$TransactionTagsTableCreateCompanionBuilder,
        $$TransactionTagsTableUpdateCompanionBuilder,
        (TransactionTag, $$TransactionTagsTableReferences),
        TransactionTag,
        drift.PrefetchHooks Function({bool transactionId, bool tagId})>;
typedef $$SettingsTableCreateCompanionBuilder = SettingsCompanion Function({
  required String key,
  drift.Value<String?> value,
  drift.Value<int> rowid,
});
typedef $$SettingsTableUpdateCompanionBuilder = SettingsCompanion Function({
  drift.Value<String> key,
  drift.Value<String?> value,
  drift.Value<int> rowid,
});

class $$SettingsTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $SettingsTable> {
  $$SettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => drift.ColumnFilters(column));
}

class $$SettingsTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $SettingsTable> {
  $$SettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => drift.ColumnOrderings(column));
}

class $$SettingsTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $SettingsTable> {
  $$SettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  drift.GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$SettingsTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $SettingsTable,
    Setting,
    $$SettingsTableFilterComposer,
    $$SettingsTableOrderingComposer,
    $$SettingsTableAnnotationComposer,
    $$SettingsTableCreateCompanionBuilder,
    $$SettingsTableUpdateCompanionBuilder,
    (Setting, drift.BaseReferences<_$TradingDatabase, $SettingsTable, Setting>),
    Setting,
    drift.PrefetchHooks Function()> {
  $$SettingsTableTableManager(_$TradingDatabase db, $SettingsTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<String> key = const drift.Value.absent(),
            drift.Value<String?> value = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              SettingsCompanion(
            key: key,
            value: value,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            drift.Value<String?> value = const drift.Value.absent(),
            drift.Value<int> rowid = const drift.Value.absent(),
          }) =>
              SettingsCompanion.insert(
            key: key,
            value: value,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), drift.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SettingsTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $SettingsTable,
    Setting,
    $$SettingsTableFilterComposer,
    $$SettingsTableOrderingComposer,
    $$SettingsTableAnnotationComposer,
    $$SettingsTableCreateCompanionBuilder,
    $$SettingsTableUpdateCompanionBuilder,
    (Setting, drift.BaseReferences<_$TradingDatabase, $SettingsTable, Setting>),
    Setting,
    drift.PrefetchHooks Function()>;
typedef $$CategoriesTableCreateCompanionBuilder = CategoriesCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<int> parentId,
  required int transactionId,
  required DateTime createdAt,
});
typedef $$CategoriesTableUpdateCompanionBuilder = CategoriesCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<int> parentId,
  drift.Value<int> transactionId,
  drift.Value<DateTime> createdAt,
});

final class $$CategoriesTableReferences extends drift
    .BaseReferences<_$TradingDatabase, $CategoriesTable, Category> {
  $$CategoriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TransactionsTable _transactionIdTable(_$TradingDatabase db) =>
      db.transactions.createAlias(drift.$_aliasNameGenerator(
          db.categories.transactionId, db.transactions.id));

  $$TransactionsTableProcessedTableManager get transactionId {
    final $_column = $_itemColumn<int>('transaction_id')!;

    final manager = $$TransactionsTableTableManager($_db, $_db.transactions)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_transactionIdTable($_db));
    if (item == null) return manager;
    return drift.ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CategoriesTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<int> get parentId => $composableBuilder(
      column: $table.parentId,
      builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));

  $$TransactionsTableFilterComposer get transactionId {
    final $$TransactionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableFilterComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CategoriesTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<int> get parentId => $composableBuilder(
      column: $table.parentId,
      builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));

  $$TransactionsTableOrderingComposer get transactionId {
    final $$TransactionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableOrderingComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CategoriesTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<int> get parentId =>
      $composableBuilder(column: $table.parentId, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$TransactionsTableAnnotationComposer get transactionId {
    final $$TransactionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.transactionId,
        referencedTable: $db.transactions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionsTableAnnotationComposer(
              $db: $db,
              $table: $db.transactions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CategoriesTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, $$CategoriesTableReferences),
    Category,
    drift.PrefetchHooks Function({bool transactionId})> {
  $$CategoriesTableTableManager(_$TradingDatabase db, $CategoriesTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<int> parentId = const drift.Value.absent(),
            drift.Value<int> transactionId = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              CategoriesCompanion(
            id: id,
            name: name,
            parentId: parentId,
            transactionId: transactionId,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<int> parentId = const drift.Value.absent(),
            required int transactionId,
            required DateTime createdAt,
          }) =>
              CategoriesCompanion.insert(
            id: id,
            name: name,
            parentId: parentId,
            transactionId: transactionId,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CategoriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({transactionId = false}) {
            return drift.PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends drift.TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (transactionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.transactionId,
                    referencedTable:
                        $$CategoriesTableReferences._transactionIdTable(db),
                    referencedColumn:
                        $$CategoriesTableReferences._transactionIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CategoriesTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, $$CategoriesTableReferences),
    Category,
    drift.PrefetchHooks Function({bool transactionId})>;
typedef $$ReasonTableCreateCompanionBuilder = ReasonCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  required DateTime createdAt,
});
typedef $$ReasonTableUpdateCompanionBuilder = ReasonCompanion Function({
  drift.Value<int> id,
  drift.Value<String?> name,
  drift.Value<DateTime> createdAt,
});

class $$ReasonTableFilterComposer
    extends drift.Composer<_$TradingDatabase, $ReasonTable> {
  $$ReasonTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnFilters(column));

  drift.ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnFilters(column));
}

class $$ReasonTableOrderingComposer
    extends drift.Composer<_$TradingDatabase, $ReasonTable> {
  $$ReasonTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => drift.ColumnOrderings(column));

  drift.ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => drift.ColumnOrderings(column));
}

class $$ReasonTableAnnotationComposer
    extends drift.Composer<_$TradingDatabase, $ReasonTable> {
  $$ReasonTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  drift.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  drift.GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  drift.GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$ReasonTableTableManager extends drift.RootTableManager<
    _$TradingDatabase,
    $ReasonTable,
    ReasonData,
    $$ReasonTableFilterComposer,
    $$ReasonTableOrderingComposer,
    $$ReasonTableAnnotationComposer,
    $$ReasonTableCreateCompanionBuilder,
    $$ReasonTableUpdateCompanionBuilder,
    (
      ReasonData,
      drift.BaseReferences<_$TradingDatabase, $ReasonTable, ReasonData>
    ),
    ReasonData,
    drift.PrefetchHooks Function()> {
  $$ReasonTableTableManager(_$TradingDatabase db, $ReasonTable table)
      : super(drift.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReasonTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReasonTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReasonTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            drift.Value<DateTime> createdAt = const drift.Value.absent(),
          }) =>
              ReasonCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            drift.Value<int> id = const drift.Value.absent(),
            drift.Value<String?> name = const drift.Value.absent(),
            required DateTime createdAt,
          }) =>
              ReasonCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), drift.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ReasonTableProcessedTableManager = drift.ProcessedTableManager<
    _$TradingDatabase,
    $ReasonTable,
    ReasonData,
    $$ReasonTableFilterComposer,
    $$ReasonTableOrderingComposer,
    $$ReasonTableAnnotationComposer,
    $$ReasonTableCreateCompanionBuilder,
    $$ReasonTableUpdateCompanionBuilder,
    (
      ReasonData,
      drift.BaseReferences<_$TradingDatabase, $ReasonTable, ReasonData>
    ),
    ReasonData,
    drift.PrefetchHooks Function()>;

class $TradingDatabaseManager {
  final _$TradingDatabase _db;
  $TradingDatabaseManager(this._db);
  $$AccountTypesTableTableManager get accountTypes =>
      $$AccountTypesTableTableManager(_db, _db.accountTypes);
  $$CurrencysTableTableManager get currencys =>
      $$CurrencysTableTableManager(_db, _db.currencys);
  $$AccountsTableTableManager get accounts =>
      $$AccountsTableTableManager(_db, _db.accounts);
  $$AssetsTypesTableTableManager get assetsTypes =>
      $$AssetsTypesTableTableManager(_db, _db.assetsTypes);
  $$AssetsTableTableManager get assets =>
      $$AssetsTableTableManager(_db, _db.assets);
  $$SidesTableTableManager get sides =>
      $$SidesTableTableManager(_db, _db.sides);
  $$EntryConditionsTableTableManager get entryConditions =>
      $$EntryConditionsTableTableManager(_db, _db.entryConditions);
  $$SessionsTableTableManager get sessions =>
      $$SessionsTableTableManager(_db, _db.sessions);
  $$TraderTypesTableTableManager get traderTypes =>
      $$TraderTypesTableTableManager(_db, _db.traderTypes);
  $$MoodsTableTableManager get moods =>
      $$MoodsTableTableManager(_db, _db.moods);
  $$TransactionsTableTableManager get transactions =>
      $$TransactionsTableTableManager(_db, _db.transactions);
  $$TransactionMediaTableTableManager get transactionMedia =>
      $$TransactionMediaTableTableManager(_db, _db.transactionMedia);
  $$RemarksTableTableManager get remarks =>
      $$RemarksTableTableManager(_db, _db.remarks);
  $$RemarkMediaTableTableManager get remarkMedia =>
      $$RemarkMediaTableTableManager(_db, _db.remarkMedia);
  $$TagsTableTableManager get tags => $$TagsTableTableManager(_db, _db.tags);
  $$TransactionTagsTableTableManager get transactionTags =>
      $$TransactionTagsTableTableManager(_db, _db.transactionTags);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$ReasonTableTableManager get reason =>
      $$ReasonTableTableManager(_db, _db.reason);
}

mixin _$AccountDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AccountTypesTable get accountTypes => attachedDatabase.accountTypes;
  $CurrencysTable get currencys => attachedDatabase.currencys;
  $AccountsTable get accounts => attachedDatabase.accounts;
}
mixin _$AccountsTypeDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AccountTypesTable get accountTypes => attachedDatabase.accountTypes;
}
mixin _$AssetsTypesDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AssetsTypesTable get assetsTypes => attachedDatabase.assetsTypes;
}
mixin _$AssetsDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AssetsTypesTable get assetsTypes => attachedDatabase.assetsTypes;
  $CurrencysTable get currencys => attachedDatabase.currencys;
  $AssetsTable get assets => attachedDatabase.assets;
}
mixin _$TransactionDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AccountTypesTable get accountTypes => attachedDatabase.accountTypes;
  $CurrencysTable get currencys => attachedDatabase.currencys;
  $AccountsTable get accounts => attachedDatabase.accounts;
  $AssetsTypesTable get assetsTypes => attachedDatabase.assetsTypes;
  $AssetsTable get assets => attachedDatabase.assets;
  $SidesTable get sides => attachedDatabase.sides;
  $EntryConditionsTable get entryConditions => attachedDatabase.entryConditions;
  $SessionsTable get sessions => attachedDatabase.sessions;
  $TraderTypesTable get traderTypes => attachedDatabase.traderTypes;
  $MoodsTable get moods => attachedDatabase.moods;
  $TransactionsTable get transactions => attachedDatabase.transactions;
}
mixin _$EntryConditionDaoMixin on DatabaseAccessor<TradingDatabase> {
  $EntryConditionsTable get entryConditions => attachedDatabase.entryConditions;
}
mixin _$SessionsDaoMixin on DatabaseAccessor<TradingDatabase> {
  $SessionsTable get sessions => attachedDatabase.sessions;
}
mixin _$TraderTypesDaoMixin on DatabaseAccessor<TradingDatabase> {
  $TraderTypesTable get traderTypes => attachedDatabase.traderTypes;
}
mixin _$MoodsDaoMixin on DatabaseAccessor<TradingDatabase> {
  $MoodsTable get moods => attachedDatabase.moods;
}
mixin _$SidesDaoMixin on DatabaseAccessor<TradingDatabase> {
  $SidesTable get sides => attachedDatabase.sides;
}
mixin _$TransactionMediaDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AccountTypesTable get accountTypes => attachedDatabase.accountTypes;
  $CurrencysTable get currencys => attachedDatabase.currencys;
  $AccountsTable get accounts => attachedDatabase.accounts;
  $AssetsTypesTable get assetsTypes => attachedDatabase.assetsTypes;
  $AssetsTable get assets => attachedDatabase.assets;
  $SidesTable get sides => attachedDatabase.sides;
  $EntryConditionsTable get entryConditions => attachedDatabase.entryConditions;
  $SessionsTable get sessions => attachedDatabase.sessions;
  $TraderTypesTable get traderTypes => attachedDatabase.traderTypes;
  $MoodsTable get moods => attachedDatabase.moods;
  $TransactionsTable get transactions => attachedDatabase.transactions;
  $TransactionMediaTable get transactionMedia =>
      attachedDatabase.transactionMedia;
}
mixin _$RemarksDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AccountTypesTable get accountTypes => attachedDatabase.accountTypes;
  $CurrencysTable get currencys => attachedDatabase.currencys;
  $AccountsTable get accounts => attachedDatabase.accounts;
  $AssetsTypesTable get assetsTypes => attachedDatabase.assetsTypes;
  $AssetsTable get assets => attachedDatabase.assets;
  $SidesTable get sides => attachedDatabase.sides;
  $EntryConditionsTable get entryConditions => attachedDatabase.entryConditions;
  $SessionsTable get sessions => attachedDatabase.sessions;
  $TraderTypesTable get traderTypes => attachedDatabase.traderTypes;
  $MoodsTable get moods => attachedDatabase.moods;
  $TransactionsTable get transactions => attachedDatabase.transactions;
  $RemarksTable get remarks => attachedDatabase.remarks;
}
mixin _$RemarkMediaDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AccountTypesTable get accountTypes => attachedDatabase.accountTypes;
  $CurrencysTable get currencys => attachedDatabase.currencys;
  $AccountsTable get accounts => attachedDatabase.accounts;
  $AssetsTypesTable get assetsTypes => attachedDatabase.assetsTypes;
  $AssetsTable get assets => attachedDatabase.assets;
  $SidesTable get sides => attachedDatabase.sides;
  $EntryConditionsTable get entryConditions => attachedDatabase.entryConditions;
  $SessionsTable get sessions => attachedDatabase.sessions;
  $TraderTypesTable get traderTypes => attachedDatabase.traderTypes;
  $MoodsTable get moods => attachedDatabase.moods;
  $TransactionsTable get transactions => attachedDatabase.transactions;
  $RemarksTable get remarks => attachedDatabase.remarks;
  $RemarkMediaTable get remarkMedia => attachedDatabase.remarkMedia;
}
mixin _$TagsDaoMixin on DatabaseAccessor<TradingDatabase> {
  $TagsTable get tags => attachedDatabase.tags;
}
mixin _$TransactionTagsDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AccountTypesTable get accountTypes => attachedDatabase.accountTypes;
  $CurrencysTable get currencys => attachedDatabase.currencys;
  $AccountsTable get accounts => attachedDatabase.accounts;
  $AssetsTypesTable get assetsTypes => attachedDatabase.assetsTypes;
  $AssetsTable get assets => attachedDatabase.assets;
  $SidesTable get sides => attachedDatabase.sides;
  $EntryConditionsTable get entryConditions => attachedDatabase.entryConditions;
  $SessionsTable get sessions => attachedDatabase.sessions;
  $TraderTypesTable get traderTypes => attachedDatabase.traderTypes;
  $MoodsTable get moods => attachedDatabase.moods;
  $TransactionsTable get transactions => attachedDatabase.transactions;
  $TagsTable get tags => attachedDatabase.tags;
  $TransactionTagsTable get transactionTags => attachedDatabase.transactionTags;
}
mixin _$SettingsDaoMixin on DatabaseAccessor<TradingDatabase> {
  $SettingsTable get settings => attachedDatabase.settings;
}
mixin _$CategoriesDaoMixin on DatabaseAccessor<TradingDatabase> {
  $AccountTypesTable get accountTypes => attachedDatabase.accountTypes;
  $CurrencysTable get currencys => attachedDatabase.currencys;
  $AccountsTable get accounts => attachedDatabase.accounts;
  $AssetsTypesTable get assetsTypes => attachedDatabase.assetsTypes;
  $AssetsTable get assets => attachedDatabase.assets;
  $SidesTable get sides => attachedDatabase.sides;
  $EntryConditionsTable get entryConditions => attachedDatabase.entryConditions;
  $SessionsTable get sessions => attachedDatabase.sessions;
  $TraderTypesTable get traderTypes => attachedDatabase.traderTypes;
  $MoodsTable get moods => attachedDatabase.moods;
  $TransactionsTable get transactions => attachedDatabase.transactions;
  $CategoriesTable get categories => attachedDatabase.categories;
}
mixin _$ReasonDaoMixin on DatabaseAccessor<TradingDatabase> {
  $MoodsTable get moods => attachedDatabase.moods;
}
mixin _$CurrencysDaoMixin on DatabaseAccessor<TradingDatabase> {
  $CurrencysTable get currencys => attachedDatabase.currencys;
}
