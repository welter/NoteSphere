import 'dart:ui';
import 'package:brainbox/helpers/show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:brainbox/services/note_service.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:brainbox/widgets/notes_card.dart';
import 'package:brainbox/pages/create_note.dart';
import 'package:brainbox/widgets/note_category_card.dart';
import '../models/note_model.dart';
//import '../crud/journal_services.dart';
import '../helpers/constants.dart';
//import '../models/journal.dart';
//import '../widgets/journal_card.dart';
//import 'add_journal.dart';
//import 'view_journal.dart';

class CalendarCard extends StatefulWidget {
  const CalendarCard({super.key});

  @override
  State<CalendarCard> createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  void _onSelectDay(DateTime selectedDay, DateTime focusedDay) {
    setState(() => _today = selectedDay);
  }

  bool fab = false;

  List<Note> list = [];
  List<Note> noteList = [];
  NoteService noteService=NoteService();
  DateTime _today = DateTime.now();
  @override
  void initState() {
    _loadCategoriesNotes();
    super.initState();
  }

  bool holidayPredicate(DateTime day) {
    DateTime d = DateTime.utc(day.year, day.month, day.day);
    for (Note i in list) {
      if (i.date == d.millisecondsSinceEpoch.toString()) return true;
    }
    return false;
  }
  Future<void> _loadCategoriesNotes() async {
    final noteService = NoteService();
    noteList = await noteService.getNotesByDate(date:_today.toString());
    setState(() {});
  }
  @override
  //remove note
  Future<void> _removeNote(String id) async {
    try {
      await NoteService().deleteNote(id);
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        AppHelpers.showSnackBar(context, "Note deleted successfully");
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      AppHelpers.showSnackBar(context, "Failed to delete note");
    }
  }

  //edit note
  void _editNote(Note note) {
    //navigate to the edit note page
    Get.toNamed('/edit-note', arguments: note);
  }

  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    DateTime day = DateTime.utc(_today.year, _today.month, _today.day);
    print("sssssss"+_today.toString());
    if (noteList.isNotEmpty) {
      print("calendar.dart--noteList_length:"+noteList.length.toString());
      print("calendar.dart,notelist.id="+noteList[1].id);
    }
      else print("calendar.dar noteList is empty1");

/*    return FutureBuilder(
        future: noteService.loadNotes(),
        builder: (context, snapshot) {*/
          //list = snapshot.data ?? [];
          if (noteList.isNotEmpty) print("calendar.dart--noteList_length:"+noteList.length.toString()); else print("calendar.dar noteList is empty2");
          return Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              appBar: PreferredSize(
                preferredSize: Size(media.width, media.height * .45),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      color: const Color.fromARGB(125, 13, 72, 161),
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  color: Colors.white,
                                  onPressed: () => Navigator.pop(context),
                                  icon: const Icon(
                                      Icons.keyboard_backspace_rounded),
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Calendar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          TableCalendar(
                            holidayPredicate: (day) => holidayPredicate(day),
                            focusedDay: _today,
                            firstDay: DateTime.utc(2016),
                            lastDay: DateTime.utc(2030),
                            calendarStyle: CalendarStyle(
                              holidayDecoration: BoxDecoration(
                                color: Colors.lightGreenAccent[400],
                                shape: BoxShape.circle,
                              ),
                              holidayTextStyle:
                                  const TextStyle(color: Colors.black),
                              defaultTextStyle:
                                  const TextStyle(color: Colors.white),
                              weekendTextStyle:
                                  const TextStyle(color: Colors.white),
                            ),
                            daysOfWeekStyle: const DaysOfWeekStyle(
                              weekdayStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                // fontSize: 16,
                              ),
                              weekendStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                // fontSize: 16,
                              ),
                            ),
                            headerStyle: const HeaderStyle(
                              titleCentered: true,
                              formatButtonVisible: false,
                              headerMargin: EdgeInsets.zero,
                              headerPadding: EdgeInsets.symmetric(vertical: 5),
                              titleTextStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                // fontSize: 20,
                              ),
                              leftChevronIcon: Icon(
                                Icons.chevron_left,
                                color: Colors.white,
                              ),
                              rightChevronIcon: Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                              ),
                              leftChevronPadding: EdgeInsets.all(6),
                              rightChevronPadding: EdgeInsets.all(6),
                              leftChevronMargin:
                                  EdgeInsets.symmetric(horizontal: 4),
                              rightChevronMargin:
                                  EdgeInsets.symmetric(horizontal: 4),
                            ),
                            rowHeight: 44,
                            daysOfWeekHeight: 20,
                            onDaySelected: _onSelectDay,
                            selectedDayPredicate: (day) =>
                                isSameDay(day, _today),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/peakpx.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: media.height * .49),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10, left: 30, top: 10),
                        child: Text(
                          '${_today.day} ${Constants.getMonth(_today)}, ${_today.year}\'s Journal Entries:',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
/*                      FutureBuilder(
                        future: noteService.getNotesByDate(
                            date: day.millisecondsSinceEpoch.toString()),
                        builder: (context, snapshot) {*/
                ((){
//                          if (noteList) {
                            if (noteList!.isEmpty) {
                              return Expanded(
                                child: Center(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .13),
                                        const Text(
                                          'No entries for this date.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 15),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (c) =>
                                                        CreateNotePage(isNewCategory:false,
                                                            date: _today.toString())));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                          ),
                                          child: const Text(
                                            'Add entry',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                            if (noteList!.isNotEmpty) {
                              var data = noteList;
                              return Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: noteList.length,
                                  padding: EdgeInsets.zero,
                                    itemBuilder: (context, index) {
                                      return NoteCategoryCard(
                                        noteTitle: noteList[index].title,
                                        noteContent: noteList[index].content,
                                        removeNote: () async {
                                          await _removeNote(noteList[index].id);
                                          setState(() {
                                            noteList.removeAt(index);
                                          });
                                        },
                                        editNote: () async {
                                          _editNote(noteList[index]);
                                        },
                                        viewSingleNote: () {
                                          print("viewSingleNote(notes_by_category.dart),noteList:"+noteList[index].toString());
                                          Get.toNamed(
                                            "/single-note",
                                            arguments: noteList[index],
                                          );
                                        },
                                      );
                                    },
//                                  itemBuilder: (ctx, i) => NotesCard(
//                                      noteCategory: data[i].category,
//                                      noOfNotes: int.parse(data[i].id))
/*                                      .cal(
                                    time: data[i].date,
                                    title: data[i].title,
                                    subtitle: data[i].subtitle,
                                    mood: Constants.returnEmoji(data[i].mood),
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (c) =>
                                            ViewJournal(id: data[i].id),
                                      ),
                                    ).whenComplete(() => setState(() {})),
                                  ),*/
                                ),
                              );
                            }
//                          }
                          return const Center(
                              child: Text('Something went wrong !!'));
                        })(),
                    ],
                  ),
                ),
              ),
              floatingActionButton: FutureBuilder(
                future: noteService.getNotesByDate(
                    date: day.millisecondsSinceEpoch.toString()),
                builder: (c, s) {
                  if (s.hasData && s.data!.isNotEmpty) {
                    print("calendar.dart,s:");
                    return FloatingActionButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const CreateNotePage(isNewCategory:true))),
                      backgroundColor: Colors.lightBlueAccent,
                      shape: const CircleBorder(),
                      child: const Icon(Icons.add, color: Colors.black),
                    );
                  }
                  return Container();
                },
              ));
}
}
