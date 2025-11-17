import 'package:brainbox/helpers/show_snackbar.dart';
import 'package:brainbox/models/note_model.dart';
import 'package:brainbox/services/note_service.dart';
import 'package:brainbox/utils/colors.dart';
import 'package:brainbox/utils/constants.dart';
import 'package:brainbox/utils/router.dart';
import 'package:brainbox/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';
import 'package:uuid/uuid.dart';
import 'package:getwidget/getwidget.dart';

class CreateTransactionPage extends StatefulWidget {
  final bool isNewCategory;
  final String date;
  const CreateTransactionPage({
    super.key,
    required this.isNewCategory,
    this.date='2000-1-1'
  });

  @override
  State<CreateTransactionPage> createState() => _CreateTransactionPageState();
}

class _CreateTransactionPageState extends State<CreateTransactionPage> {
  //form key
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _noteTitileController = TextEditingController();
  final TextEditingController _noteContentController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  late String _date;
  String category = 'Work';
  List<String> categories = [];

  @override
  void dispose() {
    _noteTitileController.dispose();
    _noteContentController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _date=widget.date;
    // Load all the categories
    _loadCategories();
    super.initState();
  }

  Future _loadCategories() async {
    final noteService = NoteService();
    categories = await noteService.getAllCategories();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("dateis:"+_date.toString());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            AppRouter.router.go(
              "/",
            );
          },
        ),
      ),
      body: 
       Form(
        child: Column(
          children: [
            Expanded(
            child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Asset*',
                                                  style:styleManager.textStyle,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                    Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:BoxDecoration(
                                                      // 在这里设置装饰属性（如背景颜色、边框等）
                                                      borderRadius: BorderRadius.circular(12),
                                                      border: Border.all(color: Colors.grey, width: 2),
                                                    ),
                                                    child:
                                                    wGFDropdown(
                                                      controller: _model
                                                          .assetValueController ,
                                                      items: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                        );
                                                      }).toList(),
                                                      onChanged: (val) =>(
                                                          _model.assetValue =
                                                              val),
/*                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,*/
                                                      hint: Text('Select one...'),
                                                        icon:Icon(Icons.arrow_drop_down, color: Colors.black),
                                                        iconEnabledColor:Color(0x14324),
                                                        elevation: 2,
/*                                                      'Search for an item...',
                                                      searchCursorColor:,

                                                      borderColor:,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:,
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                        searchHintText:    */
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]//.divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ]//.divide(SizedBox(width: 12)),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Entry Date*',
                                                  style:styleManager.textStyle
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: InkWell(
                                                    splashColor:
                                                    Colors.transparent,
                                                    focusColor:
                                                    Colors.transparent,
                                                    hoverColor:
                                                    Colors.transparent,
                                                    highlightColor:
                                                    Colors.transparent,
                                                    onTap: () async {
                                                      final _datePickedDate =
                                                      await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                        DateTime.now(),
                                                        firstDate:
                                                        DateTime.now(),
                                                        lastDate:
                                                        DateTime(2050),
                                                        builder:
                                                            (context, child) {
                                                          return wrapInMaterialDatePickerTheme(
                                                            context,
                                                            child!
                                                          );
                                                        },
                                                      );
                                                      TimeOfDay?
                                                      _datePickedTime;
                                                      if (_datePickedDate !=
                                                          null) {
                                                        _datePickedTime =
                                                        await showTimePicker(
                                                          context: context,
                                                          initialTime: TimeOfDay
                                                              .fromDateTime(
                                                              DateTime.now()),
                                                          builder:
                                                              (context, child) {
                                                            return wrapInMaterialTimePickerTheme(
                                                              context,
                                                              child!,
                                                            );
                                                          },
                                                        );
                                                      }

                                                      if (_datePickedDate !=
                                                          null &&
                                                          _datePickedTime !=
                                                              null) {
                                                        safeSetState(() {
                                                          _model.datePicked =
                                                              DateTime(
                                                                _datePickedDate
                                                                    .year,
                                                                _datePickedDate
                                                                    .month,
                                                                _datePickedDate.day,
                                                                _datePickedTime!
                                                                    .hour,
                                                                _datePickedTime
                                                                    .minute,
                                                              );
                                                        });
                                                      } else if (_model
                                                          .datePicked !=
                                                          null) {
                                                        safeSetState(() {
                                                          _model.datePicked =
                                                              DateTime.now();
                                                        });
                                                      }
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 48,
                                                      decoration:styleManager.boxDecoration,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .dateTextController,
                                                        focusNode: _model
                                                            .dateFocusNode,
                                                        autofocus: true,
                                                        textCapitalization:
                                                        TextCapitalization
                                                            .words,
                                                        obscureText: false,
                                                        decoration:
                                                        InputDecoration(
                                                          labelText:
                                                          'EntryDate*',
                                                          labelStyle:styleManager.textStyle,
                                                          hintStyle:styleManager.textStyle,
                                                          errorStyle:styleManager.textStyle,
                                                          enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: styleManager.color,
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                12),
                                                          ),
                                                          focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: styleManager.color,
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                12),
                                                          ),
                                                          errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: styleManager.color,
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                12),
                                                          ),
                                                          focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: styleManager.color,
                                                              width: 2,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                12),
                                                          ),
                                                          filled: true,
                                                          fillColor: (_model
                                                              .dateFocusNode
                                                              ?.hasFocus ??
                                                              false)
                                                              ? styleManager.color
                                                              : styleManager.color,
                                                          contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              16,
                                                              20,
                                                              16,
                                                              20),
                                                        ),
                                                        style:styleManager.textStyle,
                                                        cursorColor:styleManager.color,
                                                        validator: _model
                                                            .dateTextControllerValidator(
                                                            context),
                                                        inputFormatters: [
                                                          _model.dateMask
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Price*',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:,
                                                    child: TextFormField(
                                                      controller:,
                                                      focusNode:,
                                                      autofocus: true,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'Price*',
                                                        labelStyle:,
                                                        hintStyle:,
                                                        errorStyle:,
                                                        enabledBorder:,
                                                        focusedBorder:
                                                        inputFocusedBorder(),
                                                        errorBorder:
                                                        inputErrorBorder(),
                                                        focusedErrorBorder:
                                                        inputFocusedErrorBorder(),
                                                        filled: true,
                                                        fillColor: ,
                                                      ),
                                                      style:,
                                                      cursorColor:,
                                                      validator:,
                                                      inputFormatters:,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Quantity*',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:,
                                                    child: TextFormField(
                                                      controller:,
                                                      focusNode:,
                                                      autofocus: true,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'Quantity*',
                                                        labelStyle:,
                                                        hintStyle:,
                                                        errorStyle:,
                                                        enabledBorder:,
                                                        focusedBorder:
                                                        inputFocusedBorder(),
                                                        errorBorder:
                                                        inputErrorBorder(),
                                                        focusedErrorBorder:
                                                        inputFocusedErrorBorder(),
                                                        filled: true,
                                                        fillColor: ,
                                                      ),
                                                      style:,
                                                      cursorColor:,
                                                      validator:,
                                                      inputFormatters:,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                          child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Account*',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:
                                                    child: GFDropdown(
                                                      controller: _model
                                                          .assetValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      items: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                        );
                                                      }).toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.assetValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:,
                                                      icon: ,
                                                      fillColor: ,
                                                      elevation: 2,
                                                      borderColor:,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:,
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Session*',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:
                                                    child: GFDropdown(
                                                      controller: _model
                                                          .assetValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      items: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                        );
                                                      }).toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.assetValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:,
                                                      icon: ,
                                                      fillColor: ,
                                                      elevation: 2,
                                                      borderColor:,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:,
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Fee',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:,
                                                    child: TextFormField(
                                                      controller:,
                                                      focusNode:,
                                                      autofocus: true,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'Fee',
                                                        labelStyle:,
                                                        hintStyle:,
                                                        errorStyle:,
                                                        enabledBorder:,
                                                        focusedBorder:
                                                        inputFocusedBorder(),
                                                        errorBorder:
                                                        inputErrorBorder(),
                                                        focusedErrorBorder:
                                                        inputFocusedErrorBorder(),
                                                        filled: true,
                                                        fillColor: ,
                                                      ),
                                                      style:,
                                                      cursorColor:,
                                                      validator:,
                                                      inputFormatters:,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Tax',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:,
                                                    child: TextFormField(
                                                      controller:,
                                                      focusNode:,
                                                      autofocus: true,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'Tax',
                                                        labelStyle:,
                                                        hintStyle:,
                                                        errorStyle:,
                                                        enabledBorder:,
                                                        focusedBorder:
                                                        inputFocusedBorder(),
                                                        errorBorder:
                                                        inputErrorBorder(),
                                                        focusedErrorBorder:
                                                        inputFocusedErrorBorder(),
                                                        filled: true,
                                                        fillColor: ,
                                                      ),
                                                      style:,
                                                      cursorColor:,
                                                      validator:,
                                                      inputFormatters:,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'StopLoss',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:,
                                                    child: TextFormField(
                                                      controller:,
                                                      focusNode:,
                                                      autofocus: true,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'StopLoss',
                                                        labelStyle:,
                                                        hintStyle:,
                                                        errorStyle:,
                                                        enabledBorder:,
                                                        focusedBorder:
                                                        inputFocusedBorder(),
                                                        errorBorder:
                                                        inputErrorBorder(),
                                                        focusedErrorBorder:
                                                        inputFocusedErrorBorder(),
                                                        filled: true,
                                                        fillColor: ,
                                                      ),
                                                      style:,
                                                      cursorColor:,
                                                      validator:,
                                                      inputFormatters:,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'ExitPrice',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:,
                                                    child: TextFormField(
                                                      controller:,
                                                      focusNode:,
                                                      autofocus: true,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'ExitPrice',
                                                        labelStyle:,
                                                        hintStyle:,
                                                        errorStyle:,
                                                        enabledBorder:,
                                                        focusedBorder:
                                                        inputFocusedBorder(),
                                                        errorBorder:
                                                        inputErrorBorder(),
                                                        focusedErrorBorder:
                                                        inputFocusedErrorBorder(),
                                                        filled: true,
                                                        fillColor: ,
                                                      ),
                                                      style:,
                                                      cursorColor:,
                                                      validator:,
                                                      inputFormatters:,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                          child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Side*',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:
                                                    child: GFDropdown(
                                                      controller: _model
                                                          .assetValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      items: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                        );
                                                      }).toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.assetValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:,
                                                      icon: ,
                                                      fillColor: ,
                                                      elevation: 2,
                                                      borderColor:,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:,
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'TradeType',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:
                                                    child: GFDropdown(
                                                      controller: _model
                                                          .assetValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      items: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                        );
                                                      }).toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.assetValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:,
                                                      icon: ,
                                                      fillColor: ,
                                                      elevation: 2,
                                                      borderColor:,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:,
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                          child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'EntryCondition',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:
                                                    child: GFDropdown(
                                                      controller: _model
                                                          .assetValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      items: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                        );
                                                      }).toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.assetValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:,
                                                      icon: ,
                                                      fillColor: ,
                                                      elevation: 2,
                                                      borderColor:,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:,
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Mood',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration:
                                                    child: GFDropdown(
                                                      controller: _model
                                                          .assetValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      items: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                        );
                                                      }).toList(),
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.assetValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:,
                                                      icon: ,
                                                      fillColor: ,
                                                      elevation: 2,
                                                      borderColor:,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:,
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: true,
                                                      isMultiSelect: false,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Reason',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 100,
                                              decoration: ,
                                              child: Column(
                                                mainAxisSize:
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                          double.infinity,
                                                          height: 48,
                                                          decoration:,
                                                          child:
                                                          GFDropdown(
                                                            controller: _model
                                                            .assetValueController ??=
                                                            FormFieldController<
                                                              String>(null),
                                                            items: [
                                                              'Insurance Provider 1',
                                                              'Insurance Provider 2',
                                                              'Insurance Provider 3'
                                                            ].map<DropdownMenuItem<String>>((String value) {
                                                            return DropdownMenuItem<String>(
                                                            value: value,
                                                            child: Text(value),
                                                              );
                                                              }).toList(),
                                                            onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.assetValue =
                                                              val),
                                                          width: double.infinity,
                                                          height: 52,
                                                          searchHintTextStyle:,
                                                          searchTextStyle:,
                                                          textStyle:,
                                                          hintText: 'Select one...',
                                                          searchHintText:
                                                          'Search for an item...',
                                                          searchCursorColor:,
                                                          icon: ,
                                                          fillColor: ,
                                                          elevation: 2,
                                                          borderColor:,
                                                          borderWidth: 2,
                                                          borderRadius: 12,
                                                          margin:,
                                                          hidesUnderline: true,
                                                          isOverButton: true,
                                                          isSearchable: true,
                                                          isMultiSelect: false,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                          double.infinity,
                                                          height: 48,
                                                          decoration:,
                                                          child: Text(
                                                            'Gender',
                                                            style: ,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ].divide(SizedBox(height: 12)),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Remark',
                                                  style:,
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 100,
                                              decoration:,
                                              child: Slidable(
                                                endActionPane: ActionPane(
                                                  motion: const ScrollMotion(),
                                                  extentRatio: 0.25,
                                                  children: [
                                                    SlidableAction(
                                                      label: 'Delete',
                                                      backgroundColor:,
                                                      icon: Icons
                                                          .delete_outline_rounded,
                                                      onPressed: (_) {
                                                        print(
                                                            'SlidableActionWidget pressed ...');
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  child: ListTile(
                                                    title: Text(
                                                      'Title',
                                                      style:,
                                                    ),
                                                    subtitle: Text(
                                                      'Subtitle',
                                                      style:,
                                                    tileColor:,
                                                    dense: false,
                                                    contentPadding:,
                                                    shape:,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                ]
                                    .divide(SizedBox(height: 18))
                                    .addToEnd(SizedBox(height: 32)),
                              ),
                            )

           ],
        ),
      ),
    )
          ]
        )
       );
  }

  void safeSetState(Null Function() param0) {}


}






//需要修改部分


class wrapInMaterialDatePickerTheme extends Widget {
  late BuildContext Context;

  late Widget Child;

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }


  wrapInMaterialDatePickerTheme(BuildContext context,Widget child):super()
   {this.Context=context;this.Child=child;}
}

class wrapInMaterialTimePickerTheme extends Widget {
  late BuildContext Context;

  late Widget Child;

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }


  wrapInMaterialTimePickerTheme(BuildContext context,Widget child):super()
  {this.Context=context;this.Child=child;}
}

class wGFDropdown extends GFDropdown{
  ChangeNotifier? controller;
  wGFDropdown({this.controller,Key? key,
    required super.items,
    super.icon,
    super.selectedItemBuilder,
    super.value,
    super.hint,
    super.disabledHint,
    required super.onChanged,
    super.onTap,
    super.elevation = 8,
    super.style,
    super.underline,
    super.iconDisabledColor,
    super.iconEnabledColor,
    super.iconSize = 24.0,
    super.isDense = true,
    super.isExpanded = false,
    super.itemHeight = 40,
    super.focusColor,
    super.focusNode,
    super.autofocus = false,
    super.dropdownColor,
    super.padding = const EdgeInsets.all(5),
    super.borderRadius = const BorderRadius.all(Radius.circular(4)),
    super.border = const BorderSide(
        color: Colors.transparent, width: 1, style: BorderStyle.solid),
    super.dropdownButtonColor = GFColors.WHITE});

}
class styleManager
{
  static final TextStyle textStyle=TextStyle(
    color: Colors.blue,           // 设置文本颜色
    fontSize: 12,                 // 设置字体大小
    fontWeight: FontWeight.bold,  // 设置字体粗细
    fontStyle: FontStyle.italic,  // 设置字体为斜体
  );
  static final boxDecoration=BoxDecoration(
  // 在这里设置装饰属性（如背景颜色、边框等）
  borderRadius: BorderRadius.circular(12),
  border: Border.all(color: Colors.grey, width: 2),
  );
  static final color=Color(3333);
}
class FormFieldController extends ChangeNotifier{
}


extension DivideList on List<Widget> {
static double? _height,_width;
static double? get height=>_height;
static double? get width=>_width;
static set height(double? value)
{
  _height=value;
}
static set width(double? value)
{
  _width=value;
}
  // 在 Column 和 Row 中递归地为子组件添加间隔
  List<Widget> divide(SizedBox sizebox) {
    List<Widget> dividedChildren = [];
    height=sizebox.height;
    width=sizebox.width;
    for (int i = 0; i < this.length; i++) {
      Widget child = this[i];

      // 如果子组件是 Column，递归处理并添加竖向间隔
      if (child is Column) {
        dividedChildren.add(Column(
          children: _addVerticalSpacing(child.children),  // 添加竖向间隔
        ));
      }
      // 如果子组件是 Row，递归处理并添加横向间隔
      else if (child is Row) {
        dividedChildren.add(Row(
          children: _addHorizontalSpacing(child.children),  // 添加横向间隔
        ));
      }
      // 其他 Widget 直接添加
      else {
        dividedChildren.add(child);
      }

      // 在子组件之间添加竖向间隔
      if (i < this.length - 1) {
        dividedChildren.add(SizedBox(height: height));
      }
    }

    return dividedChildren;
  }

  // 为 Column 子组件之间添加竖向间隔
  List<Widget> _addVerticalSpacing(List<Widget> children) {
    List<Widget> result = [];
    for (int i = 0; i < children.length; i++) {
      result.add(children[i]);

      if (i < children.length - 1) {
        result.add(SizedBox(height: height));  // 添加竖向间隔
      }
    }
    return result;
  }

  // 为 Row 子组件之间添加横向间隔
  List<Widget> _addHorizontalSpacing(List<Widget> children) {
    List<Widget> result = [];
    for (int i = 0; i < children.length; i++) {
      result.add(children[i]);

      if (i < children.length - 1) {
        result.add(SizedBox(width: width));  // 添加横向间隔
      }
    }
    return result;
  }
}



class _model {
  static String? assetValue;

  static DateTime? datePicked;

  static TextEditingController? dateTextController;

  static FocusNode? dateFocusNode;

  static var dateMask;

  static FormFieldController? get assetValueController => null;

  static FormFieldValidator<String>? dateTextControllerValidator(BuildContext context) {}
}
