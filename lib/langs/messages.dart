import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello',
      'switch_language': 'Switch Language',
      'title': 'Home Page',
      'Work':'Work',
      'Asset*':'Asset*',
      'Entry Date*':'Entry Date*',
      'Price*':'Price*',
      'Quantity*':'Quantity*',
      'Account*':'Account*',
      'Session*':'Session*',
      'Fee':'Fee',
      'Tax':'Tax',
      'StopLoss':'StopLoss',
      'ExitPrice':'ExitPrice',
      'Side*':'Side*',
      'TradeType':'TradeType',
      'EntryCondition':'EntryCondition',
      'Mood':'Mood',
      'Reason':'Reason',
      'Select one...':'Select one...',
      "Back":"Back",
      'Remark':'Remark',
      'Delete':'Delete',
      'Insurance Provider 1':'Insurance Provider 1'
    },
    'zh_CN': {
      'hello': '你好',
      'switch_language': '切换语言',
      'title': '首页',
      'Work':'工作',
      'Asset*':'资产（股票）*',
      'Entry Date*':'进场时间*',
      'Price*':'价格*',
      'Quantity*':'数量*',
      'Account*':'账户*',
      'Session*':'交易所*',
      'Fee':'交易费',
      'Tax':'交易税',
      'StopLoss':'止损价',
      'ExitPrice':'期望价',
      'Side*':'交易方向*',
      'TradeType':'交易类型',
      'EntryCondition':'进场状态',
      'Mood':'心情',
      'Reason':'交易理由',
      'Select one...':'请选择',
      "Back":'返回',
      'Remark':'备注',
      'Delete':'删除',
      'Insurance Provider 1':'选项一'
    }
  };
}