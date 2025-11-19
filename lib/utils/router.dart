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
import 'package:go_router/go_router.dart';

import '../pages/create_Transaction.dart';
import '../pages/test.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    // debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      //Home Page route
      GoRoute(
        name: "home",
        path: '/',
        builder: (context, state) {
          return HomePage();
        },
      ),
      GoRoute(
        name: "notes",
        path: '/notes',
        builder: (context, state) {
          return const NotesPage();
        },
      ),
      GoRoute(
        name: "test",
        path: '/test',
        builder: (context, state) {
          return const TestPage();
        },
      ),

      GoRoute(
        name: "create-note",
        path: "/create-note",
        builder: (context, state) {
          final isNewCategory = state.extra as bool;

          return CreateNotePage(
            isNewCategory: isNewCategory,
          );
        },
      ),

      GoRoute(
        name: "note-category", // Corrected route name
        path: "/category", // Corrected path with parameter
        builder: (context, state) {
          final String category = state.extra as String;
          return NotesByCategoryPage(
            category: category,
          );
        },
      ),

      GoRoute(
        name: "edit-note", // Corrected route name
        path: "/edit-note", // Corrected path with parameter
        builder: (context, state) {
          final Note note = state.extra as Note;
          return UpdateNotePage(
            note: note,
          );
        },
      ),

      GoRoute(
        name: "single-note", // Corrected route name
        path: "/single-note", // Corrected path with parameter
        builder: (context, state) {
          final Note note = state.extra as Note;
          return SingleNotePage(note: note);
        },
      ),

      GoRoute(
        name: "calendar", // Corrected route name
        path: "/calendar", // Corrected path with parameter
        builder: (context, state) {
//          final Note note = state.extra as Note;
          return CalendarCard();
        },
      ),
      GoRoute(
        name: "createTransaction", // Corrected route name
        path: "/createTransaction", // Corrected path with parameter
        builder: (context, state) {
//          final Note note = state.extra as Note;
          return CreateTransactionPage(isNewCategory: false,);
        },
      ),
    ],
  );
}
