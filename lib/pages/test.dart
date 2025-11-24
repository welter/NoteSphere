import 'package:brainbox/models/note_model.dart';
import 'package:brainbox/services/note_service.dart';
import 'package:brainbox/utils/colors.dart';
import 'package:brainbox/utils/constants.dart';
import 'package:get/get.dart';
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
            Get.toNamed("/create-note", arguments: false);
          },
          onNewCategory: () {
            Navigator.pop(context);
            Get.toNamed("/create-note", arguments: true);
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



  void _showCustomDialog() {
  showDialog(
  context: context,
  builder: (BuildContext context) {
  return Dialog(
  shape: RoundedRectangleBorder(  // 圆角边框
  borderRadius: BorderRadius.circular(20.0),
  ),
  elevation: 10,  // 阴影效果
  backgroundColor: Colors.white,
  child: Container(height:600,
  padding: const EdgeInsets.all(20),
  child: Expanded(child:
  Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    SingleChildScrollView(
    child:
        Container(
          height: 400,
    child:
    TextFormField(
      //controller:
     // _model().textFormController,
      expands: true,
      maxLines: null,
      focusNode: null,
      autofocus: true,
      decoration: InputDecoration(
        labelText: 'Quantity*',
        //labelStyle: styleManager.textStyle,
        //hintStyle: styleManager.textStyle,
        //errorStyle: styleManager.textStyle,
        //enabledBorder:
        //styleManager.inputEnabledBorder,
        //focusedBorder:
        //styleManager.inputFocusedBorder,
        //errorBorder:
        //styleManager.inputErrorBorder,
        //focusedErrorBorder: styleManager
        //    .inputFocusedErrorBorder,
        filled: true,
        //isCollapsed: true,
        fillColor: Colors.blueAccent,
      ),
      style: TextStyle(fontSize: 16, color: Colors.yellow),//文字大小、颜色,
      //cursorColor: styleManager.cursorColor,
      //validator: _model.quantityValidator,
      //inputFormatters:
      //_model().quantityInputFormatters,
    ))),
  //const Icon(Icons.warning, size: 50, color: Colors.amber),  // 警告图标
  const SizedBox(height: 20),
//  const Text(
 // '自定义弹窗',
 // style: TextStyle(
 // fontSize: 22,
 // fontWeight: FontWeight.bold,
 // ),
 // ),
  const SizedBox(height: 15),
/*  const Text(
  '这是一个完全自定义的弹窗，可以包含任何Widget',
  textAlign: TextAlign.center,
  ),*/
  const SizedBox(height: 25),
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  TextButton(
  style: TextButton.styleFrom(
  backgroundColor: Colors.grey[200],
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
  ),
  ),
  onPressed: () => Navigator.pop(context),  // 关闭弹框
  child: const Text('关闭'),
  ),
  TextButton(
  style: TextButton.styleFrom(
  backgroundColor: Colors.blue,
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
  ),
  ),
  onPressed: () {
  Navigator.pop(context);
  ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(content: Text('操作已执行')),
  );
  },
  child: const Text('确定'),
  ),
  ],
  ),
  ],
  ),
  )),
  );
  },
  );
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
    Center(
    child: ElevatedButton(
  onPressed: _showCustomDialog,
  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
  child: const Text('显示自定义弹窗'),
  ),
  ),






    );
  }
}
