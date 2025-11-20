import 'package:brainbox/models/note_model.dart';
import 'package:brainbox/services/note_service.dart';
import 'package:brainbox/utils/colors.dart';
import 'package:brainbox/utils/constants.dart';
import 'package:brainbox/utils/router.dart';
import 'package:brainbox/utils/text_styles.dart';
import 'package:brainbox/widgets/bottom_sheet.dart';
import 'package:brainbox/widgets/notes_card.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Note> allNotes = [];
  Map<String, List<Note>> notesWithCategory = {};
  final NoteService noteService = NoteService();

  void openBottomSheet() {
    showModalBottomSheet(
      barrierColor: Colors.black.withOpacity(0.7),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return CategoryInputBottomSheet(
          onNewNote: () {
            Navigator.pop(context);
            AppRouter.router.push("/create-note", extra: false);
          },
          onNewCategory: () {
            Navigator.pop(context);
            AppRouter.router.push("/create-note", extra: true);
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _checkIfUserIsNew();
  }

  void _checkIfUserIsNew() async {
    // Check if the notes box is empty
    final bool isNewUser = await noteService.isNewUser();
    if (isNewUser) {
      // If the user is new, create the initial notes
      await noteService.createInitialNotes();
    }
    // Load the notes
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    final List<Note> loadedNotes = await noteService.loadNotes();

    final Map<String, List<Note>> notesCategoryies =
    noteService.getNotesByCategoryMap(loadedNotes);

    setState(() {
      allNotes = loadedNotes;
      notesWithCategory = notesCategoryies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        ExpandableNotifier(  // <-- Provides ExpandableController to its children
          child:
          ScrollOnExpand(
              child:
          Column(
            children: [Text('333')
              ,
              Expandable(           // <-- Driven by ExpandableController from ExpandableNotifier
                collapsed: ExpandableButton(  // <-- Expands when tapped on the cover photo
                  child: Text('111',style: TextStyle(
                    fontSize: 28,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.wavy,
                    decorationThickness: 1,
                  )),
                ),
                expanded: Column(
                    children: [
                      Text('222',style: TextStyle(
                        fontSize: 28,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.wavy,
                        decorationThickness: 1,
                      )),
                      ExpandableButton(       // <-- Collapses when tapped on
                        child: Text("Back",style: TextStyle(
                          fontSize: 12,
                          color: Colors.redAccent,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.wavy,
                          decorationThickness: 1,
                        )),
                      ),
                    ]
                ),
              ),
            ],
          ),
        )
        )
//welter add end






    );
  }
}
