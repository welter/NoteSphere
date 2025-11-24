import 'package:get/get.dart';
import 'package:brainbox/data/trading_database.dart';

class TransController extends GetxController {
  var transactions = <Transaction>[].obs;  // 使用 Rx 类型存储 Todo 列表
  final TradingDatabase _db = TradingDatabase();
  late final TransactionDao transactionDao;
  var curIndex=0.obs;
  @override
  void onInit() {
    super.onInit();
    transactionDao=TransactionDao(_db);
    loadTransactions();
  }

  // 加载所有交易
  void loadTransactions() async {

    List<Transaction> todoMaps = await transactionDao.getTransactions();
    transactions.value = todoMaps;
  }

  // 添加交易
  void addTransaction(Transaction transaction) async {
    await transactionDao.insertTransactions(transactions.value.first);
    loadTransactions();  // 插入后重新加载列表
  }

  // 更新交易
  void updateTransaction(Transaction transaction) async {
    await transactionDao.updateTransactions(transactions.value.first);
    loadTransactions();  // 更新后重新加载列表
  }

  // 删除交易
  void deleteTodo(int id) async {
    await transactionDao.deleteTransactions(id);
    loadTransactions();  // 删除后重新加载列表
  }
}