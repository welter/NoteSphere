import 'package:brainbox/models/note_model.dart';
import 'package:brainbox/models/todo_model.dart';
import 'package:brainbox/pages/todo_data_inharited.dart';
import 'package:brainbox/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:get/get.dart';
import 'langs/messages.dart';
import 'package:brainbox/utils/getxRouter.dart';
void main() async {
  // Initialize Hive
  await Hive.initFlutter();

  //adapters registration
  Hive.registerAdapter(NoteAdapter());
  Hive.registerAdapter(ToDoAdapter());

  // Open Hive box
  await Hive.openBox('notes');
  await Hive.openBox('todos');
  // 在初始化时强制同步 Get.locale
  if (Get.locale == null) {
    Get.updateLocale(Locale('zh', 'CN')); // 确保初始化时语言为中文
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        theme: ThemeClass.darkTheme.copyWith(
          textTheme: GoogleFonts.dmSansTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
          translations:Messages(),
          locale:  Locale('zh', 'CN'),
        initialRoute: '/home', // 设置默认路由
        fallbackLocale: Locale('en', 'US'),
        getPages: getxRouter.routes,   // 使用 getxRoutes 中的路由配置
    );
  }
}
