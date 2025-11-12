import '../data/trading_database.dart';  // 引入 Drift 数据库
class m_Account {
  final int id; // 账户id
  final String name; // 账户名称
  final int typeId; // 账户类型id
  final String currency; // 账户货币
  final double balance; // 账户余额
  final DateTime createdAt; // 创建时间

  // 构造函数
  m_Account({
    required this.id,
    required this.name,
    required this.typeId,
    required this.currency,
    required this.balance,
    required this.createdAt,
  });

  // 从Map中创建Account实例（通常用于从数据库查询结果创建对象）
  factory m_Account.fromData(Map<String, dynamic> data) {
    return m_Account(
      id: data['id'],
      name: data['name'],
      typeId: data['typeId'],
      currency: data['currency'],
      balance: data['balance'],
      createdAt: DateTime.parse(data['createdAt']),
    );
  }

  // 将Account实例转化为Map（用于插入数据库时）
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'typeId': typeId,
      'currency': currency,
      'balance': balance,
      'createdAt': createdAt.toIso8601String(),
    };
  }
  //从Account创建示例
  factory m_Account.fromAccount(Account account){
    return m_Account(id: account.id,
        name: account.name,
        typeId: account.typeId,
        currency: account.currency,
        balance: account.balance,
        createdAt: account.createdAt);
  }
}
