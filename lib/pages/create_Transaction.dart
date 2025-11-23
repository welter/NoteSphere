import 'package:brainbox/helpers/show_snackbar.dart';
import 'package:brainbox/models/note_model.dart';
import 'package:brainbox/services/note_service.dart';
import 'package:brainbox/utils/colors.dart';
import 'package:brainbox/utils/constants.dart';
import 'package:brainbox/utils/router.dart';
import 'package:brainbox/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:uuid/uuid.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:expandable/expandable.dart';
import 'package:get/get.dart';

class CreateTransactionPage extends StatefulWidget {
  final bool isNewCategory;
  final String date;

  const CreateTransactionPage(
      {super.key, required this.isNewCategory, this.date = '2000-1-1'});

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
  String category = 'Work'.tr;
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
    _date = widget.date;
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
    print("dateis:" + _date.toString());
    String s='hello'.tr;
    bool _showAssetDropdown = false;
    bool _showAccountDropdown = false;
    bool _showSideDropdown = false;
    ;
    bool _showTradeTypeDropdown = false;
    bool _showEntryConditionDropdown = false;
    bool _showMoodDropdown = false;
    print(Get.locale);
    print('CreateTransactionPage local:'+Localizations.localeOf(context).toString());
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
        body: Form(
            child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Column(
                        children: [
                      //Asset
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                //Asset Label
                                Row(
                                  children: [
                                    Text(
                                      'Asset*'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Assed text and dropdown
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: //true
                                            //? //welter
                                            //Expanded(
                                                //child:
                                                  wGFDropdown(
                                                  isExpanded: true,
                                                  controller: _model
                                                      .assetValueController,
                                                  items: [
                                                    'Insurance Provider 1',
                                                    'Insurance Provider 2',
                                                    'Insurance Provider 3'
                                                  ].map<DropdownMenuItem<String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(
                                                          value,
                                                        style: styleManager.textStyle,
                                                      ),
                                                    );
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    safeSetState(() => _model
                                                        .assetValue = val);
                                                  },
/*                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,*/
                                                  hint: Text('Select one...'),
                                                  icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.green),
                                                  iconEnabledColor:
                                                      Color(0x14324),
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
                                            //  )
                                            //: SizedBox(
                                            //    width: 10,
                                            //    height: 10,
                                            //  ), //welter
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                        ]//.divide(SizedBox(width: 12)),
                      ),
                      //Entry Date
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                //Entry Date Label
                                Row(
                                  children: [
                                    Text('Entry Date*'.tr,
                                        style: styleManager.textStyle),
                                  ],
                                ),
                                //Entry Date text and selector
                                Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          final _datePickedDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate: DateTime(2050),
                                            builder: (context, child) {
                                              return wrapInMaterialDatePickerTheme(
                                                  context, child!);
                                            },
                                          );
                                          TimeOfDay? _datePickedTime;
                                          if (_datePickedDate != null) {
                                            _datePickedTime =
                                                await showTimePicker(
                                              context: context,
                                              initialTime:
                                                  TimeOfDay.fromDateTime(
                                                      DateTime.now()),
                                              builder: (context, child) {
                                                return wrapInMaterialTimePickerTheme(
                                                  context,
                                                  child!,
                                                );
                                              },
                                            );
                                          }

                                          if (_datePickedDate != null &&
                                              _datePickedTime != null) {
                                            safeSetState(() {
                                              _model.datePicked = DateTime(
                                                _datePickedDate.year,
                                                _datePickedDate.month,
                                                _datePickedDate.day,
                                                _datePickedTime!.hour,
                                                _datePickedTime.minute,
                                              );
                                            });
                                          } else if (_model.datePicked !=
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
                                          decoration:
                                              styleManager.boxDecoration,
                                          child: TextFormField(
                                            controller:
                                                _model.dateTextController,
                                            focusNode: _model.dateFocusNode,
                                            autofocus: true,
                                            textCapitalization:
                                                TextCapitalization.words,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Entry Date*'.tr,
                                              labelStyle:
                                                  styleManager.textStyle,
                                              hintStyle: styleManager.textStyle,
                                              errorStyle:
                                                  styleManager.textStyle,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: styleManager.color,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: styleManager.color,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: styleManager.color,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: styleManager.color,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              filled: true,
                                              fillColor: (_model.dateFocusNode
                                                          ?.hasFocus ??
                                                      false)
                                                  ? styleManager.color
                                                  : styleManager.color,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(16, 20, 16, 20),
                                            ),
                                            style: styleManager.textStyle,
                                            cursorColor: styleManager.color,
                                            validator: _model
                                                .dateTextControllerValidator(
                                                    context),
                                            inputFormatters: [_model.dateMask],
                                          ),
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
                      //Price and Quantity
                      Row(
                        children: [
                          //Price
                          Expanded(
                            child: Column(
                              children: [
                                //price Label
                                Row(
                                  children: [
                                    Text(
                                      'Price*'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Price input
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: TextFormField(
                                          controller:
                                              _model().textFormController,
                                          focusNode: null,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            labelText: 'Price*'.tr,
                                            labelStyle: styleManager.textStyle,
                                            hintStyle: styleManager.textStyle,
                                            errorStyle: styleManager.textStyle,
                                            enabledBorder:
                                                styleManager.inputEnabledBorder,
                                            focusedBorder:
                                                styleManager.inputFocusedBorder,
                                            errorBorder:
                                                styleManager.inputErrorBorder,
                                            focusedErrorBorder: styleManager
                                                .inputFocusedErrorBorder,
                                            filled: true,
                                            fillColor: styleManager.fillColor,
                                          ),
                                          style: styleManager.textStyle,
                                          cursorColor: styleManager.cursorColor,
                                          validator: _model.priceValidator,
                                          inputFormatters:
                                              _model().priceInputFormatters,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                          //Quantity
                          Expanded(
                            child: Column(
                              children: [
                                //Quantity Label
                                Row(
                                  children: [
                                    Text(
                                      'Quantity*'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Quantity Input
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: TextFormField(
                                          controller:
                                              _model().textFormController,
                                          focusNode: null,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            labelText: 'Quantity*'.tr,
                                            labelStyle: styleManager.textStyle,
                                            hintStyle: styleManager.textStyle,
                                            errorStyle: styleManager.textStyle,
                                            enabledBorder:
                                                styleManager.inputEnabledBorder,
                                            focusedBorder:
                                                styleManager.inputFocusedBorder,
                                            errorBorder:
                                                styleManager.inputErrorBorder,
                                            focusedErrorBorder: styleManager
                                                .inputFocusedErrorBorder,
                                            filled: true,
                                            fillColor: styleManager.fillColor,
                                          ),
                                          style: styleManager.textStyle,
                                          cursorColor: styleManager.cursorColor,
                                          validator: _model.quantityValidator,
                                          inputFormatters:
                                              _model().quantityInputFormatters,
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
                      //Account and Session
                      Row(
                        children: [
                          //Account
                          Expanded(
                            child: Column(
                              children: [
                                //Account Label
                                Row(
                                  children: [
                                    Text(
                                      'Account*'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Account Dropdown
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: _showAccountDropdown
                                            ? //welter
                                            Expanded(
                                                child: wGFDropdown(
                                                  controller: _model
                                                      .accountValueController,
                                                  items: [
                                                    'Insurance Provider 1',
                                                    'Insurance Provider 2',
                                                    'Insurance Provider 3'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    safeSetState(() => _model
                                                        .accountValue = val);
                                                  },
/*                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,*/
                                                  hint: Text('Select one...'),
                                                  icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.black),
                                                  iconEnabledColor:
                                                      Color(0x14324),
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
                                              )
                                            : SizedBox(
                                                width: 10,
                                                height: 10,
                                              ), //welter
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                          //Session
                          Expanded(
                            child: Column(
                              children: [
                                //Session Label
                                Row(
                                  children: [
                                    Text(
                                      'Session*'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Session Drawdown
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: _showAccountDropdown
                                            ? //welter
                                            Expanded(
                                                child: wGFDropdown(
                                                  controller: _model
                                                      .sessionValueController,
                                                  items: [
                                                    'Insurance Provider 1',
                                                    'Insurance Provider 2',
                                                    'Insurance Provider 3'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    safeSetState(() => _model
                                                        .sessionValue = val);
                                                  },
/*                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,*/
                                                  hint: Text('Select one...'),
                                                  icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.black),
                                                  iconEnabledColor:
                                                      Color(0x14324),
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
                                              )
                                            : SizedBox(
                                                width: 10,
                                                height: 10,
                                              ), //welter
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                        ]//.divide(SizedBox(width: 12)),
                      ),
                      //Fee and Tax
                      Row(
                        children: [
                          //Fee
                          Expanded(
                            child: Column(
                              children: [
                                //Fee Label
                                Row(
                                  children: [
                                    Text(
                                      'Fee'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Fee input
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: TextFormField(
                                          controller:
                                              _model().textFormController,
                                          focusNode: null,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            labelText: 'Fee'.tr,
                                            labelStyle: styleManager.textStyle,
                                            hintStyle: styleManager.textStyle,
                                            errorStyle: styleManager.textStyle,
                                            enabledBorder:
                                                styleManager.inputEnabledBorder,
                                            focusedBorder:
                                                styleManager.inputFocusedBorder,
                                            errorBorder:
                                                styleManager.inputErrorBorder,
                                            focusedErrorBorder: styleManager
                                                .inputFocusedErrorBorder,
                                            filled: true,
                                            fillColor: styleManager.fillColor,
                                          ),
                                          style: styleManager.textStyle,
                                          cursorColor: styleManager.cursorColor,
                                          validator: _model.priceValidator,
                                          inputFormatters:
                                              _model().priceInputFormatters,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                          //Tax
                          Expanded(
                            child: Column(
                              children: [
                                //Tax Label
                                Row(
                                  children: [
                                    Text(
                                      'Tax'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Tax Input
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: TextFormField(
                                          controller:
                                              _model().textFormController,
                                          focusNode: null,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            labelText: 'Tax'.tr,
                                            labelStyle: styleManager.textStyle,
                                            hintStyle: styleManager.textStyle,
                                            errorStyle: styleManager.textStyle,
                                            enabledBorder:
                                                styleManager.inputEnabledBorder,
                                            focusedBorder:
                                                styleManager.inputFocusedBorder,
                                            errorBorder:
                                                styleManager.inputErrorBorder,
                                            focusedErrorBorder: styleManager
                                                .inputFocusedErrorBorder,
                                            filled: true,
                                            fillColor: styleManager.fillColor,
                                          ),
                                          style: styleManager.textStyle,
                                          cursorColor: styleManager.cursorColor,
                                          validator: _model.quantityValidator,
                                          inputFormatters:
                                              _model().quantityInputFormatters,
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
                      //StopLoss and ExitPrice
                      Row(
                        children: [
                          //StopLoss
                          Expanded(
                            child: Column(
                              children: [
                                //StopLoss Label
                                Row(
                                  children: [
                                    Text(
                                      'StopLoss'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //StopLoss input
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: TextFormField(
                                          controller:
                                              _model().textFormController,
                                          focusNode: null,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            labelText: 'StopLoss'.tr,
                                            labelStyle: styleManager.textStyle,
                                            hintStyle: styleManager.textStyle,
                                            errorStyle: styleManager.textStyle,
                                            enabledBorder:
                                                styleManager.inputEnabledBorder,
                                            focusedBorder:
                                                styleManager.inputFocusedBorder,
                                            errorBorder:
                                                styleManager.inputErrorBorder,
                                            focusedErrorBorder: styleManager
                                                .inputFocusedErrorBorder,
                                            filled: true,
                                            fillColor: styleManager.fillColor,
                                          ),
                                          style: styleManager.textStyle,
                                          cursorColor: styleManager.cursorColor,
                                          validator: _model.priceValidator,
                                          inputFormatters:
                                              _model().priceInputFormatters,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                          //ExitPrice
                          Expanded(
                            child: Column(
                              children: [
                                //ExitPrice Label
                                Row(
                                  children: [
                                    Text(
                                      'ExitPrice'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //ExitPrice Input
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: TextFormField(
                                          controller:
                                              _model().textFormController,
                                          focusNode: null,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            labelText: 'ExitPrice'.tr,
                                            labelStyle: styleManager.textStyle,
                                            hintStyle: styleManager.textStyle,
                                            errorStyle: styleManager.textStyle,
                                            enabledBorder:
                                                styleManager.inputEnabledBorder,
                                            focusedBorder:
                                                styleManager.inputFocusedBorder,
                                            errorBorder:
                                                styleManager.inputErrorBorder,
                                            focusedErrorBorder: styleManager
                                                .inputFocusedErrorBorder,
                                            filled: true,
                                            fillColor: styleManager.fillColor,
                                          ),
                                          style: styleManager.textStyle,
                                          cursorColor: styleManager.cursorColor,
                                          validator: _model.quantityValidator,
                                          inputFormatters:
                                              _model().quantityInputFormatters,
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
                      //Side and TradeType
                      Row(
                        children: [
                          //Side
                          Expanded(
                            child: Column(
                              children: [
                                //Side Label
                                Row(
                                  children: [
                                    Text(
                                      'Side*'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Side Dropdown
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: _showSideDropdown
                                            ? //welter
                                            Expanded(
                                                child: wGFDropdown(
                                                  controller: _model
                                                      .sideValueController,
                                                  items: [
                                                    'Insurance Provider 1',
                                                    'Insurance Provider 2',
                                                    'Insurance Provider 3'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    safeSetState(() =>
                                                        _model.sideValue = val);
                                                  },
/*                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,*/
                                                  hint: Text('Select one...'),
                                                  icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.black),
                                                  iconEnabledColor:
                                                      Color(0x14324),
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
                                              )
                                            : SizedBox(
                                                width: 10,
                                                height: 10,
                                              ), //welter
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                          //TradeType
                          Expanded(
                            child: Column(
                              children: [
                                //TradeType Label
                                Row(
                                  children: [
                                    Text(
                                      'TradeType'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //TradeType Drawdown
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: _showTradeTypeDropdown
                                            ? //welter
                                            Expanded(
                                                child: wGFDropdown(
                                                  controller: _model
                                                      .tradeTypeValueController,
                                                  items: [
                                                    'Insurance Provider 1',
                                                    'Insurance Provider 2',
                                                    'Insurance Provider 3'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    safeSetState(() => _model
                                                        .tradeTypeValue = val);
                                                  },
/*                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,*/
                                                  hint: Text('Select one...'),
                                                  icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.black),
                                                  iconEnabledColor:
                                                      Color(0x14324),
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
                                              )
                                            : SizedBox(
                                                width: 10,
                                                height: 10,
                                              ), //welter
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                        ]//.divide(SizedBox(width: 12)),
                      ),
                      //EntryCondition and Mood
                      Row(
                        children: [
                          //EntryCondition
                          Expanded(
                            child: Column(
                              children: [
                                //EntryCondition Label
                                Row(
                                  children: [
                                    Text(
                                      'EntryCondition'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //EntryCondition Dropdown
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: _showEntryConditionDropdown
                                            ? //welter
                                            Expanded(
                                                child: wGFDropdown(
                                                  controller: _model
                                                      .entryConditionValueController,
                                                  items: [
                                                    'Insurance Provider 1',
                                                    'Insurance Provider 2',
                                                    'Insurance Provider 3'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    safeSetState(() => _model
                                                            .entryConditionValue =
                                                        val);
                                                  },
/*                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,*/
                                                  hint: Text('Select one...'),
                                                  icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.black),
                                                  iconEnabledColor:
                                                      Color(0x14324),
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
                                              )
                                            : SizedBox(
                                                width: 10,
                                                height: 10,
                                              ), //welter
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                          //Mood
                          Expanded(
                            child: Column(
                              children: [
                                //Mood Label
                                Row(
                                  children: [
                                    Text(
                                      'Mood'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Mood Drawdown
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 48,
                                        decoration: styleManager.boxDecoration,
                                        child: _showMoodDropdown
                                            ? //welter
                                            Expanded(
                                                child: wGFDropdown(
                                                  controller: _model
                                                      .moodValueController,
                                                  items: [
                                                    'Insurance Provider 1',
                                                    'Insurance Provider 2',
                                                    'Insurance Provider 3'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged: (val) {
                                                    safeSetState(() =>
                                                        _model.moodValue = val);
                                                  },
/*                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,*/
                                                  hint: Text('Select one...'),
                                                  icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.black),
                                                  iconEnabledColor:
                                                      Color(0x14324),
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
                                              )
                                            : SizedBox(
                                                width: 10,
                                                height: 10,
                                              ), //welter
                                      ),
                                    ),
                                  ],
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                        ]//.divide(SizedBox(width: 12)),
                      ),
                      //Reason
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                //Reason Label
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Reason'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                //Reason Drawdown and Reason Text
                                Container(
                                  width: double.infinity,
                                  //height: 120,
                                  decoration: styleManager.boxDecoration,
                                  child: Column(
                                    children: [
                                      //Reason Drawdown
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 48,
                                              decoration:
                                                  styleManager.boxDecoration,
                                              child: wGFDropdown(
                                                isExpanded: true,
                                                controller: _model
                                                    .reasonValueController,
                                                items: [
                                                  'Insurance Provider 1',
                                                  'Insurance Provider 2',
                                                  'Insurance Provider 3'
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                                onChanged: (val) {
                                                  safeSetState(() =>
                                                      _model.reasonValue = val);
                                                },
/*                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:,
                                                      searchTextStyle:,
                                                      textStyle:,*/
                                                hint: Text('Select one...'.tr),
                                                icon: const Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Colors.black),
                                                iconEnabledColor:
                                                    Color(0x14324),
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
                                      //Reason Text
                                      Row(
/*welter                                        children: [
                                          Expanded(
                                              child: Stack(children: [
                                            Container(
                                              width: double.infinity,
                                              height: 63,
                                              decoration:
                                                  styleManager.boxDecoration,
                                              child: SingleChildScrollView(
                                                padding: EdgeInsets.zero,
                                                  child: Text(
                                                'Genderdfsgdsfgdsfgdsfgdsfgdsfgsdgdfgdsgdsgdfgdgdfgdsfgdfgdgdfgdgdgsdgdfgsgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg',
                                                style: styleManager.textStyle,
                                              )),
                                            ),
                                            // Positioned图标，放在TextField的右下角
                                            Positioned(
                                              right: 200,
                                              // 距离右边10个像素
                                              bottom: 1,
                                              // 距离底部10个像素
                                              child: IconButton(
                                                icon: Icon(
                                                    Icons.more_horiz_outlined,
                                                    color: Colors.red),
                                                onPressed:
                                                    _onIconClicked, // 图标点击事件
                                              ),
                                            ),
                                          ]))
                                        ],welter因使用expandable注释掉*/

                                      //welter add begin 2025-1119
                                          children:[
                                            Expanded(
                                             child:ExpandableNotifier(
                                            child:
                                              ScrollOnExpand(
                                                scrollOnExpand: true,
                                                scrollOnCollapse: false,
                                                child:
                                                Column(
                                                  children: [Text('333')
                                                    ,
                                                    Expandable(           // <-- Driven by ExpandableController from ExpandableNotifier
                                                      collapsed: ExpandableButton(  // <-- Expands when tapped on the cover photo
                                                        child:
                                                        Text("111",style: TextStyle(
                                                          fontSize: 36,
                                                          color: Colors.redAccent,
                                                          decoration: TextDecoration.underline,
                                                          decorationStyle: TextDecorationStyle.wavy,
                                                          decorationThickness: 1,
                                                        )),
                                                      ),
                                                      expanded: Column(
                                                          children: [
                                                            TextFormField(
                                                              controller:
                                                              _model().textFormController,
                                                              focusNode: null,
                                                              autofocus: true,
                                                              decoration: InputDecoration(
                                                                labelText: 'Quantity*'.tr,
                                                                labelStyle: styleManager.textStyle,
                                                                hintStyle: styleManager.textStyle,
                                                                errorStyle: styleManager.textStyle,
                                                                enabledBorder:
                                                                styleManager.inputEnabledBorder,
                                                                focusedBorder:
                                                                styleManager.inputFocusedBorder,
                                                                errorBorder:
                                                                styleManager.inputErrorBorder,
                                                                focusedErrorBorder: styleManager
                                                                    .inputFocusedErrorBorder,
                                                                filled: true,
                                                                fillColor: styleManager.fillColor,
                                                              ),
                                                              style: styleManager.textStyle,
                                                              cursorColor: styleManager.cursorColor,
                                                              validator: _model.quantityValidator,
                                                              inputFormatters:
                                                              _model().quantityInputFormatters,
                                                            ),
                                                            ExpandableButton(       // <-- Collapses when tapped on
                                                              child:
                                                              Text("Back".tr,style: TextStyle(
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
          )
                ]
//welter add end





                                      ),
                                    ]//.divide(SizedBox(height: 2)),
                                  ),
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                        ]//.divide(SizedBox(width: 2)),
                      ),
                      //Remark
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                //Remark Label
                                Row(
                                  children: [
                                    Text(
                                      'Remark'.tr,
                                      style: styleManager.textStyle,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: styleManager.boxDecoration,
                                  child: Slidable(
                                    endActionPane: ActionPane(
                                      motion: const ScrollMotion(),
                                      extentRatio: 0.25,
                                      children: [
                                        SlidableAction(
                                          label: 'Delete'.tr,
                                          backgroundColor:
                                              styleManager.backgroundColor,
                                          icon: Icons.delete_outline_rounded,
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
                                          style: styleManager.textStyle,
                                        ),
                                        subtitle: Text(
                                          'Subtitle',
                                          style: styleManager.textStyle,
                                          /*tileColor:styleManager.color,
                                                    dense: false,
                                                    contentPadding:,
                                                    shape:,*/
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]//.divide(SizedBox(height: 4)),
                            ),
                          ),
                        ]//.divide(SizedBox(width: 12)),
                      ),
                    ]//.divide(SizedBox(height: 18))
                        //.addToEnd(SizedBox(height: 32)),
                        ),
                  )
                ],
              ),
            ),
          )
        ])));
  }

  void safeSetState(Null Function() param0) {}

  void _onIconClicked() {}
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

  wrapInMaterialDatePickerTheme(BuildContext context, Widget child) : super() {
    this.Context = context;
    this.Child = child;
  }
}

class wrapInMaterialTimePickerTheme extends Widget {
  late BuildContext Context;

  late Widget Child;

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }

  wrapInMaterialTimePickerTheme(BuildContext context, Widget child) : super() {
    this.Context = context;
    this.Child = child;
  }
}

class wGFDropdown<T> extends GFDropdown {
  ChangeNotifier? controller;

  wGFDropdown({
    Key? key,
    required List<T> items,
    Widget? icon,
    List<Widget> Function(BuildContext)? selectedItemBuilder,
    T? value,
    Widget? hint,
    Widget? disabledHint,
    required ValueChanged<dynamic>? onChanged,
    VoidCallback? onTap,
    int elevation = 0,          // ⭐ 默认值
    TextStyle? style,
    Widget? underline,
    Color? iconDisabledColor,
    Color? iconEnabledColor,
    double iconSize = 24.0,     // ⭐ 默认值
    bool isDense = false,       // ⭐ 默认值
    bool isExpanded = false,    // ⭐ 默认值
    double itemHeight = 40.0,   // ⭐ 默认值
    Color? focusColor,
    FocusNode? focusNode,
    bool autofocus = false,     // ⭐ 默认值
    Color? dropdownColor,
    String? Function(T?)? validator,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    BoxBorder? border,
    Color? dropdownButtonColor,
    this.controller,
  }) : super(
    key: key,
    value: value,
    isExpanded: isExpanded,
    style: style,
    dropdownColor: dropdownColor,
    elevation: elevation!,
    icon: icon,
    iconSize: iconSize,
    underline: underline,
    autofocus: autofocus,
    focusNode: focusNode,
    focusColor: focusColor,
    itemHeight: itemHeight,
    hint:hint,
    items: _buildItems(items.cast<DropdownMenuItem<dynamic>>()),
    onChanged: onChanged,
  );
  /// ⭐ 你可以在这里任意处理 item，例如翻译、过滤、排序
  static List<DropdownMenuItem<T>>? _buildItems<T>(
      List<DropdownMenuItem<T>>? items) {
    String s='1111111';
    if (items?.isNotEmpty == true) {
      return items!.map((item) {
        if (item.value is String) String s= item.value.toString().tr;
      return DropdownMenuItem<T>(
        value: item.value,
        enabled: item.enabled,
        onTap: item.onTap,
        alignment:item.alignment,
        key:item.key,
        child: Builder(
          builder: (ctx) {
            print("Get.locale = ${Get.locale}");
            print("ctx locale = ${Localizations.localeOf(ctx)}");
            return Text(s);
          },
        ),
      );
    }).toList();
    } else return null;
  }
}

class styleManager {
  static final TextStyle textStyle = TextStyle(
    color: Colors.blue, // 设置文本颜色
    fontSize: 12, // 设置字体大小
    fontWeight: FontWeight.bold, // 设置字体粗细
    fontStyle: FontStyle.italic, // 设置字体为斜体
  );
  static final boxDecoration = BoxDecoration(
    // 在这里设置装饰属性（如背景颜色、边框等）
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Colors.grey, width: 2),
  );
  static const Color color = Color(0x33458867);
  static const Color fillColor = Color(0x33458867);
  static InputBorder? inputFocusedBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  );

  static InputBorder? inputErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  );

  static InputBorder? inputEnabledBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  );

  static InputBorder? inputFocusedErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  );

  static Color? cursorColor = const Color(0x33333333);

  static Color backgroundColor = const Color(0x33333333);
}

class FormFieldController extends ChangeNotifier {}

extension DivideList on List<Widget> {
  static double? _height, _width;

  static double? get height => _height;

  static double? get width => _width;

  static set height(double? value) {
    _height = value;
  }

  static set width(double? value) {
    _width = value;
  }

  // 在 Column 和 Row 中递归地为子组件添加间隔
  List<Widget> _divide(SizedBox sizebox) {
    List<Widget> dividedChildren = [];
    height = sizebox.height;
    width = sizebox.width;
    // 如果子组件是 Column，递归处理并添加竖向间隔
     for (int i = 0; i < this.length; i++) {
      Widget child = this[i];


      if (child is Column) {
        dividedChildren.add(Column(
          children: _addVerticalSpacing(child.children), // 添加竖向间隔
        ));
      }
       //如果子组件是 Row，递归处理并添加横向间隔
      else if (child is Row) {
        dividedChildren.add(Row(
          children: _addHorizontalSpacing(child.children), // 添加横向间隔
        ));
      }
      // 其他 Widget 直接添加
      else {
        dividedChildren.add(child);
      }

      // 在子组件之间添加竖向间隔
      if (((this is Column)|| (this is Row)) && (i < this.length - 1)) {
        dividedChildren.add(SizedBox(height: height));
      }
      //welter end

    }
    return dividedChildren;
  }

  // 为 Column 子组件之间添加竖向间隔
  List<Widget> _addVerticalSpacing(List<Widget> children) {
    List<Widget> result = [];
    for (int i = 0; i < children.length; i++) {
      result.add(children[i]);

      if (i < children.length - 1) {
        result.add(SizedBox(height: height)); // 添加竖向间隔
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
        result.add(SizedBox(width: width)); // 添加横向间隔
      }
    }
    return result;
  }
}

class _dateMask extends TextInputFormatter {
  final DateFormat format = DateFormat('yyyy-MM-dd');

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;
// 简单的日期格式化逻辑，可以根据需要定制
    if (text.length == 4 && !text.contains('-')) {
      text = '${text.substring(0, 4)}-';
    } else if (text.length == 7 && !text.contains('-')) {
      text = '${text.substring(0, 7)}-';
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

class _model {
  static TextInputFormatter dateMask = _dateMask();
  static String? assetValue;

  static DateTime? datePicked;

  static TextEditingController? dateTextController;

  static FocusNode? dateFocusNode;

  TextEditingController? textFormController;

  static FormFieldValidator<String>? priceValidator;

  List<TextInputFormatter>? priceInputFormatters;

  static FormFieldValidator<String>? quantityValidator;

  List<TextInputFormatter>? quantityInputFormatters;

  static ChangeNotifier? accountValueController;

  static var accountValue;

  static ChangeNotifier? sessionValueController;

  static var sessionValue;

  static ChangeNotifier? sideValueController;

  static var sideValue;

  static ChangeNotifier? tradeTypeValueController;

  static var tradeTypeValue;

  static ChangeNotifier? entryConditionValueController;

  static var entryConditionValue;

  static var moodValue;

  static ChangeNotifier? moodValueController;

  static ChangeNotifier? reasonValueController;

  static var reasonValue;

  static FormFieldController? get assetValueController => null;

  static FormFieldValidator<String>? dateTextControllerValidator(
      BuildContext context) {}
}
