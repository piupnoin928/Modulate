import '/flutter_flow/flutter_flow_util.dart';
import 'fourseveneight_breathing_widget.dart'
    show FourseveneightBreathingWidget;
import 'package:flutter/material.dart';

class FourseveneightBreathingModel
    extends FlutterFlowModel<FourseveneightBreathingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Hour widget.
  FocusNode? hourFocusNode;
  TextEditingController? hourTextController;
  String? Function(BuildContext, String?)? hourTextControllerValidator;
  String? _hourTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter a valid number.';
    }

    if (!RegExp('^[0-9]*\$|^\$').hasMatch(val)) {
      return 'Enter a valid number.';
    }
    return null;
  }

  // State field(s) for Minutes widget.
  FocusNode? minutesFocusNode;
  TextEditingController? minutesTextController;
  String? Function(BuildContext, String?)? minutesTextControllerValidator;
  String? _minutesTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter a valid number.';
    }

    if (!RegExp('^[0-9]*\$|^\$').hasMatch(val)) {
      return 'Enter a valid number.';
    }
    return null;
  }

  // State field(s) for Seconds widget.
  FocusNode? secondsFocusNode;
  TextEditingController? secondsTextController;
  String? Function(BuildContext, String?)? secondsTextControllerValidator;
  String? _secondsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter a valid number.';
    }

    if (!RegExp('^[0-9]*\$|^\$').hasMatch(val)) {
      return 'Enter a valid number.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    hourTextControllerValidator = _hourTextControllerValidator;
    minutesTextControllerValidator = _minutesTextControllerValidator;
    secondsTextControllerValidator = _secondsTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    hourFocusNode?.dispose();
    hourTextController?.dispose();

    minutesFocusNode?.dispose();
    minutesTextController?.dispose();

    secondsFocusNode?.dispose();
    secondsTextController?.dispose();
  }
}
