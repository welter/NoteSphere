import 'package:get/get.dart';
import 'package:brainbox/data/trading_database.dart';

class TransController extends GetxController {
  var transactions = <Transaction>[].obs;  // 使用 Rx 类型存储 Todo 列表
  late final TradingDatabase _db;
  late final TransactionDao transactionDao ;
  var curIndex=0.obs;
  @override
  void onInit() async {
    await _initializeDatabase;
    await loadTransactions();
    super.onInit();

  }

  Future<void> _initializeDatabase() async {
    // 假设 TradingDatabase 的初始化是异步的
    _db = await TradingDatabase(); // 或者根据实际的异步方法初始化
    transactionDao=TransactionDao(_db);
  }


  // 加载所有交易
  Future<void> loadTransactions() async {

    List<Transaction> todoMaps = await transactionDao.getTransactions();
    transactions.value = todoMaps;
  }

  // 添加交易
  Future<void> addTransaction(Transaction transaction) async {
    await transactionDao.insertTransactions(transactions.value.first);
    loadTransactions();  // 插入后重新加载列表
  }

  // 更新交易
  Future<void> updateTransaction(Transaction transaction) async {
    await transactionDao.updateTransactions(transactions.value.first);
    loadTransactions();  // 更新后重新加载列表
  }

  // 删除交易
  Future<void> deleteTodo(int id) async {
    await transactionDao.deleteTransactions(id);
    loadTransactions();  // 删除后重新加载列表
  }
}