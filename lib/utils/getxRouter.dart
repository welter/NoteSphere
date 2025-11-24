import 'package:brainbox/models/note_model.dart';
import 'package:brainbox/pages/create_note.dart';
import 'package:brainbox/pages/home_page.dart';
import 'package:brainbox/pages/notes.dart';
import 'package:brainbox/pages/calendar.dart';
import 'package:brainbox/pages/notes_by_category.dart';
import 'package:brainbox/pages/single_note.dart';
import 'package:brainbox/pages/todos.dart';
import 'package:brainbox/pages/update_note.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/create_Transaction.dart';
import '../pages/test.dart';

class getxRouter {
  static List<GetPage> routes = [
    //Home Page route
    GetPage(
      name: "/home",
      page: () {
        return HomePage();
      },
    ),
    GetPage(
      name: "/notes",
      page: () {
        return NotesPage();
      },
    ),
    GetPage(
      name: "/test",
      page: () {
        return TestPage();
      },
    ),

    GetPage(
      name: "/create-note",
      page: () {
        return CreateNotePage(
          isNewCategory: false,
        );
      },
    ),

    GetPage(
      name: "/note-category", // Corrected route name
      page: () {
        return NotesByCategoryPage(
          category: "",
        );
      },
    ),

/*    GetPage(
      name: "edit-note", // Corrected route name
      page: () {
        return UpdateNotePage(
          note: "",
        );
      },
    ),

    GetPage(
      name: "single-note", // Corrected route name
      page: () {
        return SingleNotePage(note: "");
      },
    ),*/

    GetPage(
      name: "/calendar", // Corrected route name
      page: () {
        return CalendarCard();
      },
    ),
    GetPage(
      name: "/createTransaction", // Corrected route name
      page: () {
        Get.updateLocale(Locale('zh', 'CN'));
        return CreateTransactionPage(isNewCategory: false,);
      },
    ),
  ];


}
