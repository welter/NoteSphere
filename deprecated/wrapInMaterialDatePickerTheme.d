// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';


extension CapitalizeFirstLetter on String {
  String toCapitalization(TextCapitalization word) {
    if (this == null || this.isEmpty) {
      return this;
    }
    return '${this[0].toUpperCase()}${this.substring(1)}';
  }
}

// 创建一个 BuildContext 的 extension
extension SafePopExtension on BuildContext {
  void safePop() {
    if (Navigator.canPop(this)) {
      Navigator.pop(this);
    } else {
      // 如果没有页面可以弹出，执行其他操作或提示用户
      print("没有可以弹出的页面");
    }
  }
}


void main() {
  String example = "hello world";
  print(example.toCapitalization);  // 输出 "Hello world"
}

class wrapInMaterialDatePickerTheme extends StatefulWidget {
  const wrapInMaterialDatePickerTheme(BuildContext context, Widget widget,
      {super.key,
      required Color headerBackgroundColor,
      required Color headerForegroundColor,
      required TextStyle headerTextStyle,
      required Color pickerBackgroundColor,
      required Color pickerForegroundColor,
      required Color selectedDateTimeBackgroundColor,
      required Color selectedDateTimeForegroundColor,
      required Color actionButtonForegroundColor,
      required int iconSize});

  @override
  State<wrapInMaterialDatePickerTheme> createState() =>
      _wrapInMaterialDatePickerThemeState();

}

class  _wrapInMaterialDatePickerThemeState  extends State<wrapInMaterialDatePickerTheme>{
@override
void initState() {
super.initState();
}

@override
Widget build(BuildContext context) {
print("dateis:");
return Scaffold();
}
}