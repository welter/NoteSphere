// TODO Implement this library.

import 'package:brainbox/flutterflow-ui-main/lib/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Create06BookAppointmentModel  extends FlutterFlowModel<Widget> {
  late FocusNode dateFocusNode;
  late TextEditingController dateTextController;

  late MaskTextInputFormatter dateMask;

  late TextEditingController priceTextController;

  late FocusNode priceFocusNode;

  late TextEditingController quantityTextController;

  late FocusNode quantityFocusNode;

  late TextEditingController taxTextController;

  late FocusNode taxFocusNode;

  late TextEditingController feeTextController;

  late FocusNode feeFocusNode;

  late TextEditingController stopLossTextController;

  late FocusNode stopLossFocusNode;

  late TextEditingController exitPriceTextController;

  late FocusNode exitPriceFocusNode;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var datePicked;

  var quantityTextControllerValidator;

  var priceTextControllerValidator;

  var dateTextControllerValidator;

  ScrollController? scrollingColumnScrollController;

  late FormFieldController<String> assetValueController;

  String? assetValue;

  late FormFieldController<String> accountValueController;

  String? accountValue;

  late FormFieldController<String> sessionValueController;

  String? sessionValue;

  var taxTextControllerValidator;

  var feeTextControllerValidator;

  var stopLossTextControllerValidator;

  var exitPriceTextControllerValidator;

  late FormFieldController<String> sideValueController;

  String? sideValue;

  late FormFieldController<String> tradetypeValueController;

  String? tradetypeValue;

  String? entryConditionValue1;

  late FormFieldController<String> entryConditionValueController1;

  late FormFieldController<String> moodValueController;

  String? moodValue;

  late FormFieldController<String> entryConditionValueController2;

  String? entryConditionValue2;

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void initState(BuildContext context) {
    // TODO: implement initState
  }
}
