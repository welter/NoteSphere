import 'package:brainbox/flutterflow-ui-main/lib/flutterflow_ui.dart';
import 'package:brainbox/flutterflow-ui-main/lib/src/widgets/flutter_flow_drop_down.dart';
import 'package:brainbox/flutterflow-ui-main/lib/src/widgets/flutter_flow_icon_button.dart';
import 'package:brainbox/flutterflow-ui-main/lib/src/utils/flutter_flow_theme.dart';
import 'package:brainbox/flutterflow-ui-main/lib/src/utils/flutter_flow_util.dart';
import 'package:brainbox/flutterflow-ui-main/lib/src/widgets/flutter_flow_widgets.dart';
import 'package:brainbox/flutterflow-ui-main/lib/src/utils/form_field_controller.dart';
import 'package:brainbox/flutterflow-ui-main/lib/src/widgets/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'wrapInMaterialTimePickerTheme.dart';
import 'wrapInMaterialDatePickerTheme.dart';
import 'create06_book_appointment_model.dart';
export 'create06_book_appointment_model.dart';

class create_Transaction extends StatefulWidget {
  const create_Transaction({super.key});

  static String routeName = 'Create06BookAppointment';
  static String routePath = '/create06BookAppointment';

  @override
  State<create_Transaction> createState() =>
      _create_TransactionState();
}

class _create_TransactionState
    extends State<create_Transaction> {
  late Create06BookAppointmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  void safeSetState(VoidCallback fn) {
    if (mounted) {
      setState(fn);
    }
  }
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Create06BookAppointmentModel());

    _model.dateTextController ??= TextEditingController();
    _model.dateFocusNode ??= FocusNode();
    _model.dateFocusNode!.addListener(() => safeSetState(() {}));
    _model.dateMask = MaskTextInputFormatter(mask: '##/##/####');
    _model.priceTextController ??= TextEditingController();
    _model.priceFocusNode ??= FocusNode();
    _model.priceFocusNode!.addListener(() => safeSetState(() {}));
    _model.quantityTextController ??= TextEditingController();
    _model.quantityFocusNode ??= FocusNode();
    _model.quantityFocusNode!.addListener(() => safeSetState(() {}));
    _model.taxTextController ??= TextEditingController();
    _model.taxFocusNode ??= FocusNode();
    _model.taxFocusNode!.addListener(() => safeSetState(() {}));
    _model.feeTextController ??= TextEditingController();
    _model.feeFocusNode ??= FocusNode();
    _model.feeFocusNode!.addListener(() => safeSetState(() {}));
    _model.stopLossTextController ??= TextEditingController();
    _model.stopLossFocusNode ??= FocusNode();
    _model.stopLossFocusNode!.addListener(() => safeSetState(() {}));
    _model.exitPriceTextController ??= TextEditingController();
    _model.exitPriceFocusNode ??= FocusNode();
    _model.exitPriceFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF122738),
        appBar: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
          backgroundColor: Color(0xFF122738),
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transaction info',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight: FlutterFlowTheme.of(context)
                        .titleMedium
                        .fontWeight,
                    fontStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(context)
                      .titleMedium
                      .fontWeight,
                  fontStyle: FlutterFlowTheme.of(context)
                      .titleMedium
                      .fontStyle,
                ),
              ),
              Text(
                'Please fill in the information below to continue.',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight: FlutterFlowTheme.of(context)
                        .labelMedium
                        .fontWeight,
                    fontStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(context)
                      .labelMedium
                      .fontWeight,
                  fontStyle: FlutterFlowTheme.of(context)
                      .labelMedium
                      .fontStyle,
                ),
              ),
            ].divide(SizedBox(height: 4)),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 12, 8),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderRadius: 12,
                borderWidth: 1,
                buttonSize: 40,
                fillColor:
                FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0,
        )
            : null,
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    controller: _model.scrollingColumnScrollController,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 770,
                            ),
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Asset*',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                          .assetValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.assetValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontStyle,
                                                      ),
                                                      searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                      ),
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryText,
                                                        size: 24,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2,
                                                      borderColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .alternate,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          12, 4, 8, 4),
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Entry Date*',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
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
                                                            child!,
                                                            headerBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .primary,
                                                            headerForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .info,
                                                            headerTextStyle:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .headlineLarge
                                                                .override(
                                                              font: GoogleFonts
                                                                  .outfit(
                                                                fontWeight:
                                                                FontWeight.w600,
                                                                fontStyle: FlutterFlowTheme.of(context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                              fontSize:
                                                              32,
                                                              letterSpacing:
                                                              0.0,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w600,
                                                              fontStyle: FlutterFlowTheme.of(
                                                                  context)
                                                                  .headlineLarge
                                                                  .fontStyle,
                                                            ),
                                                            pickerBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryBackground,
                                                            pickerForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .primaryText,
                                                            selectedDateTimeBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .primary,
                                                            selectedDateTimeForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .info,
                                                            actionButtonForegroundColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .primaryText,
                                                            iconSize: 24,
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
                                                              headerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                              headerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .info,
                                                              headerTextStyle:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .headlineLarge
                                                                  .override(
                                                                font: GoogleFonts
                                                                    .outfit(
                                                                  fontWeight:
                                                                  FontWeight.w600,
                                                                  fontStyle: FlutterFlowTheme.of(context)
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize:
                                                                32,
                                                                letterSpacing:
                                                                0.0,
                                                                fontWeight:
                                                                FontWeight.w600,
                                                                fontStyle: FlutterFlowTheme.of(context)
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                              ),
                                                              pickerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .secondaryBackground,
                                                              pickerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primaryText,
                                                              selectedDateTimeBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                              selectedDateTimeForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .info,
                                                              actionButtonForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primaryText,
                                                              iconSize: 24,
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
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(12),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .alternate,
                                                          width: 2,
                                                        ),
                                                      ),
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
                                                          labelStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .override(
                                                            font: GoogleFonts
                                                                .plusJakartaSans(
                                                              fontWeight: FlutterFlowTheme.of(
                                                                  context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                              fontStyle: FlutterFlowTheme.of(
                                                                  context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                            ),
                                                            letterSpacing:
                                                            0.0,
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontStyle,
                                                          ),
                                                          hintStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .override(
                                                            font: GoogleFonts
                                                                .plusJakartaSans(
                                                              fontWeight: FlutterFlowTheme.of(
                                                                  context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                              fontStyle: FlutterFlowTheme.of(
                                                                  context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                            ),
                                                            letterSpacing:
                                                            0.0,
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontStyle,
                                                          ),
                                                          errorStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            font: GoogleFonts
                                                                .plusJakartaSans(
                                                              fontWeight: FlutterFlowTheme.of(
                                                                  context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                              fontStyle: FlutterFlowTheme.of(
                                                                  context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .error,
                                                            fontSize:
                                                            12,
                                                            letterSpacing:
                                                            0.0,
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .alternate,
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
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .primary,
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
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .error,
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
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .error,
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
                                                              ? FlutterFlowTheme
                                                              .of(
                                                              context)
                                                              .accent1
                                                              : FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              16,
                                                              20,
                                                              16,
                                                              20),
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyLarge
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                          ),
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        cursorColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        validator: _model
                                                            .dateTextControllerValidator
                                                            .asValidator(
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
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Price*',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .priceTextController,
                                                      focusNode:
                                                      _model.priceFocusNode,
                                                      autofocus: true,
                                                      enabled: true,
                                                      textCapitalization:
                                                      TextCapitalization
                                                          .words,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'Price*',
                                                        labelStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelLarge
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontStyle,
                                                          ),
                                                          fontSize: 16,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontStyle,
                                                        ),
                                                        hintStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontStyle,
                                                          ),
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        errorStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .error,
                                                          fontSize: 12,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .alternate,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .primary,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        filled: true,
                                                        fillColor: (_model
                                                            .priceFocusNode
                                                            ?.hasFocus ??
                                                            false)
                                                            ? FlutterFlowTheme
                                                            .of(context)
                                                            .accent1
                                                            : FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16,
                                                            20, 16, 20),
                                                      ),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      cursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      validator: _model
                                                          .priceTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                  newValue) {
                                                                return TextEditingValue(
                                                                  selection: newValue
                                                                      .selection,
                                                                  text: newValue
                                                                      .text
                                                                      .toCapitalization(
                                                                      TextCapitalization
                                                                          .words),
                                                                );
                                                              }),
                                                      ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Quantity*',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .quantityTextController,
                                                      focusNode: _model
                                                          .quantityFocusNode,
                                                      autofocus: true,
                                                      enabled: true,
                                                      textCapitalization:
                                                      TextCapitalization
                                                          .words,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'Quantity*',
                                                        labelStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelLarge
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontStyle,
                                                          ),
                                                          fontSize: 16,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontStyle,
                                                        ),
                                                        hintStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontStyle,
                                                          ),
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        errorStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .error,
                                                          fontSize: 12,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .alternate,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .primary,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        filled: true,
                                                        fillColor: (_model
                                                            .quantityFocusNode
                                                            ?.hasFocus ??
                                                            false)
                                                            ? FlutterFlowTheme
                                                            .of(context)
                                                            .accent1
                                                            : FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16,
                                                            20, 16, 20),
                                                      ),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      cursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      validator: _model
                                                          .quantityTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                  newValue) {
                                                                return TextEditingValue(
                                                                  selection: newValue
                                                                      .selection,
                                                                  text: newValue
                                                                      .text
                                                                      .toCapitalization(
                                                                      TextCapitalization
                                                                          .words),
                                                                );
                                                              }),
                                                      ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Account*',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                          .accountValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.accountValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontStyle,
                                                      ),
                                                      searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                      ),
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryText,
                                                        size: 24,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2,
                                                      borderColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .alternate,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          12, 4, 8, 4),
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Session*',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                          .sessionValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.sessionValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontStyle,
                                                      ),
                                                      searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                      ),
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryText,
                                                        size: 24,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2,
                                                      borderColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .alternate,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          12, 4, 8, 4),
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Fee',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .taxTextController,
                                                      focusNode:
                                                      _model.taxFocusNode,
                                                      autofocus: true,
                                                      enabled: true,
                                                      textCapitalization:
                                                      TextCapitalization
                                                          .words,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'Fee',
                                                        labelStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelLarge
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontStyle,
                                                          ),
                                                          fontSize: 16,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontStyle,
                                                        ),
                                                        hintStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontStyle,
                                                          ),
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        errorStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .error,
                                                          fontSize: 12,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .alternate,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .primary,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        filled: true,
                                                        fillColor: (_model
                                                            .taxFocusNode
                                                            ?.hasFocus ??
                                                            false)
                                                            ? FlutterFlowTheme
                                                            .of(context)
                                                            .accent1
                                                            : FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16,
                                                            20, 16, 20),
                                                      ),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      cursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      validator: _model
                                                          .taxTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                  newValue) {
                                                                return TextEditingValue(
                                                                  selection: newValue
                                                                      .selection,
                                                                  text: newValue
                                                                      .text
                                                                      .toCapitalization(
                                                                      TextCapitalization
                                                                          .words),
                                                                );
                                                              }),
                                                      ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Tax',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .feeTextController,
                                                      focusNode:
                                                      _model.feeFocusNode,
                                                      autofocus: true,
                                                      enabled: true,
                                                      textCapitalization:
                                                      TextCapitalization
                                                          .words,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'Tax',
                                                        labelStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelLarge
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontStyle,
                                                          ),
                                                          fontSize: 16,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontStyle,
                                                        ),
                                                        hintStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontStyle,
                                                          ),
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        errorStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .error,
                                                          fontSize: 12,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .alternate,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .primary,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        filled: true,
                                                        fillColor: (_model
                                                            .feeFocusNode
                                                            ?.hasFocus ??
                                                            false)
                                                            ? FlutterFlowTheme
                                                            .of(context)
                                                            .accent1
                                                            : FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16,
                                                            20, 16, 20),
                                                      ),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      cursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      validator: _model
                                                          .feeTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                  newValue) {
                                                                return TextEditingValue(
                                                                  selection: newValue
                                                                      .selection,
                                                                  text: newValue
                                                                      .text
                                                                      .toCapitalization(
                                                                      TextCapitalization
                                                                          .words),
                                                                );
                                                              }),
                                                      ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'StopLoss',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .stopLossTextController,
                                                      focusNode: _model
                                                          .stopLossFocusNode,
                                                      autofocus: true,
                                                      enabled: true,
                                                      textCapitalization:
                                                      TextCapitalization
                                                          .words,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'StopLoss',
                                                        labelStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelLarge
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontStyle,
                                                          ),
                                                          fontSize: 16,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontStyle,
                                                        ),
                                                        hintStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontStyle,
                                                          ),
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        errorStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .error,
                                                          fontSize: 12,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .alternate,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .primary,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        filled: true,
                                                        fillColor: (_model
                                                            .stopLossFocusNode
                                                            ?.hasFocus ??
                                                            false)
                                                            ? FlutterFlowTheme
                                                            .of(context)
                                                            .accent1
                                                            : FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16,
                                                            20, 16, 20),
                                                      ),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      cursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      validator: _model
                                                          .stopLossTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                  newValue) {
                                                                return TextEditingValue(
                                                                  selection: newValue
                                                                      .selection,
                                                                  text: newValue
                                                                      .text
                                                                      .toCapitalization(
                                                                      TextCapitalization
                                                                          .words),
                                                                );
                                                              }),
                                                      ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'ExitPrice',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .exitPriceTextController,
                                                      focusNode: _model
                                                          .exitPriceFocusNode,
                                                      autofocus: true,
                                                      enabled: true,
                                                      textCapitalization:
                                                      TextCapitalization
                                                          .words,
                                                      obscureText: false,
                                                      decoration:
                                                      InputDecoration(
                                                        labelText: 'ExitPrice',
                                                        labelStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelLarge
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelLarge
                                                                .fontStyle,
                                                          ),
                                                          fontSize: 16,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelLarge
                                                              .fontStyle,
                                                        ),
                                                        hintStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .fontStyle,
                                                          ),
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        errorStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .error,
                                                          fontSize: 12,
                                                          letterSpacing:
                                                          0.0,
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .alternate,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .primary,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        errorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .error,
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                        ),
                                                        filled: true,
                                                        fillColor: (_model
                                                            .exitPriceFocusNode
                                                            ?.hasFocus ??
                                                            false)
                                                            ? FlutterFlowTheme
                                                            .of(context)
                                                            .accent1
                                                            : FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16,
                                                            20, 16, 20),
                                                      ),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      cursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      validator: _model
                                                          .exitPriceTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                  newValue) {
                                                                return TextEditingValue(
                                                                  selection: newValue
                                                                      .selection,
                                                                  text: newValue
                                                                      .text
                                                                      .toCapitalization(
                                                                      TextCapitalization
                                                                          .words),
                                                                );
                                                              }),
                                                      ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Side',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                          .sideValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.sideValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontStyle,
                                                      ),
                                                      searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                      ),
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryText,
                                                        size: 24,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2,
                                                      borderColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .alternate,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          12, 4, 8, 4),
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'TradeType',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                          .tradetypeValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.tradetypeValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontStyle,
                                                      ),
                                                      searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                      ),
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryText,
                                                        size: 24,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2,
                                                      borderColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .alternate,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          12, 4, 8, 4),
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'EntryCondition',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                          .entryConditionValueController1 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.entryConditionValue1 =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontStyle,
                                                      ),
                                                      searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                      ),
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryText,
                                                        size: 24,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2,
                                                      borderColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .alternate,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          12, 4, 8, 4),
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Mood',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                          .moodValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        'Insurance Provider 1',
                                                        'Insurance Provider 2',
                                                        'Insurance Provider 3'
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                          _model.moodValue =
                                                              val),
                                                      width: double.infinity,
                                                      height: 52,
                                                      searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontStyle,
                                                      ),
                                                      searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                      ),
                                                      textStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                        ),
                                                        fontSize: 12,
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                      ),
                                                      hintText: 'Select one...',
                                                      searchHintText:
                                                      'Search for an item...',
                                                      searchCursorColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryText,
                                                        size: 24,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2,
                                                      borderColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .alternate,
                                                      borderWidth: 2,
                                                      borderRadius: 12,
                                                      margin:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          12, 4, 8, 4),
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Reason',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                          double.infinity,
                                                          height: 48,
                                                          decoration:
                                                          BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                12),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .alternate,
                                                              width: 2,
                                                            ),
                                                          ),
                                                          child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                .entryConditionValueController2 ??=
                                                                FormFieldController<
                                                                    String>(
                                                                    null),
                                                            options: [
                                                              'Insurance Provider 1',
                                                              'Insurance Provider 2',
                                                              'Insurance Provider 3'
                                                            ],
                                                            onChanged: (val) =>
                                                                safeSetState(() =>
                                                                _model.entryConditionValue2 =
                                                                    val),
                                                            width:
                                                            double.infinity,
                                                            height: 52,
                                                            searchHintTextStyle:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .labelMedium
                                                                .override(
                                                              font: GoogleFonts
                                                                  .plusJakartaSans(
                                                                fontWeight: FlutterFlowTheme.of(context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                              fontSize:
                                                              12,
                                                              letterSpacing:
                                                              0.0,
                                                              fontWeight: FlutterFlowTheme.of(
                                                                  context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                              fontStyle: FlutterFlowTheme.of(
                                                                  context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                            ),
                                                            searchTextStyle:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMedium
                                                                .override(
                                                              font: GoogleFonts
                                                                  .plusJakartaSans(
                                                                fontWeight: FlutterFlowTheme.of(context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                              letterSpacing:
                                                              0.0,
                                                              fontWeight: FlutterFlowTheme.of(
                                                                  context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                              fontStyle: FlutterFlowTheme.of(
                                                                  context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                            ),
                                                            textStyle:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodyLarge
                                                                .override(
                                                              font: GoogleFonts
                                                                  .plusJakartaSans(
                                                                fontWeight: FlutterFlowTheme.of(context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                              fontSize:
                                                              12,
                                                              letterSpacing:
                                                              0.0,
                                                              fontWeight: FlutterFlowTheme.of(
                                                                  context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                              fontStyle: FlutterFlowTheme.of(
                                                                  context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                            ),
                                                            hintText:
                                                            'Select one...',
                                                            searchHintText:
                                                            'Search for an item...',
                                                            searchCursorColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .primary,
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryText,
                                                              size: 24,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2,
                                                            borderColor:
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .alternate,
                                                            borderWidth: 2,
                                                            borderRadius: 12,
                                                            margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                12,
                                                                4,
                                                                8,
                                                                4),
                                                            hidesUnderline:
                                                            true,
                                                            isOverButton: true,
                                                            isSearchable: true,
                                                            isMultiSelect:
                                                            false,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                          double.infinity,
                                                          height: 48,
                                                          decoration:
                                                          BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                12),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .alternate,
                                                              width: 2,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            'Gender',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .labelMedium
                                                                .override(
                                                              font: GoogleFonts
                                                                  .plusJakartaSans(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                    context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                    context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: FlutterFlowTheme.of(
                                                                  context)
                                                                  .primaryText,
                                                              fontSize: 12,
                                                              letterSpacing:
                                                              0.0,
                                                              fontWeight: FlutterFlowTheme.of(
                                                                  context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                              fontStyle: FlutterFlowTheme.of(
                                                                  context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                            ),
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
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Remark',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyLarge
                                                      .override(
                                                    font: GoogleFonts
                                                        .plusJakartaSans(
                                                      fontWeight:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                              child: Slidable(
                                                endActionPane: ActionPane(
                                                  motion: const ScrollMotion(),
                                                  extentRatio: 0.25,
                                                  children: [
                                                    SlidableAction(
                                                      label: 'Delete',
                                                      backgroundColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .error,
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
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .titleLarge
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .titleLarge
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .titleLarge
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .titleLarge
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .titleLarge
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      'Subtitle',
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontWeight,
                                                          fontStyle: FlutterFlowTheme.of(
                                                              context)
                                                              .labelMedium
                                                              .fontStyle,
                                                        ),
                                                        letterSpacing:
                                                        0.0,
                                                        fontWeight: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontWeight,
                                                        fontStyle: FlutterFlowTheme.of(
                                                            context)
                                                            .labelMedium
                                                            .fontStyle,
                                                      ),
                                                    ),
                                                    tileColor: FlutterFlowTheme
                                                        .of(context)
                                                        .secondaryBackground,
                                                    dense: false,
                                                    contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        12, 0, 12, 0),
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          8),
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
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 22)),
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 770,
                  ),
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                      },
                      text: 'Add Transaction',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48,
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                        FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.plusJakartaSans(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontStyle,
                        ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 18)),
            ),
          ),
        ),
      ),
    );
  }
}
