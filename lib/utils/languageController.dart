import 'dart:ui';

import 'package:get/get.dart';

class LanguageController extends GetxController {
  // 此处可以实现语言更新的逻辑，例如：
  void changeLanguage(Locale locale) {
    Get.updateLocale(locale);
  }
}