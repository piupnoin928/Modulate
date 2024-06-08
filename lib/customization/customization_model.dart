import '/flutter_flow/flutter_flow_util.dart';
import 'customization_widget.dart' show CustomizationWidget;
import 'package:flutter/material.dart';

class CustomizationModel extends FlutterFlowModel<CustomizationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for InhalePattern widget.
  FocusNode? inhalePatternFocusNode;
  TextEditingController? inhalePatternTextController;
  String? Function(BuildContext, String?)? inhalePatternTextControllerValidator;
  String? _inhalePatternTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^\\d*\\.?\\d+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for HoldAfterInhalePattern widget.
  FocusNode? holdAfterInhalePatternFocusNode;
  TextEditingController? holdAfterInhalePatternTextController;
  String? Function(BuildContext, String?)?
      holdAfterInhalePatternTextControllerValidator;
  String? _holdAfterInhalePatternTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^\\d*\\.?\\d+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for ExhalePattern widget.
  FocusNode? exhalePatternFocusNode;
  TextEditingController? exhalePatternTextController;
  String? Function(BuildContext, String?)? exhalePatternTextControllerValidator;
  String? _exhalePatternTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^\\d*\\.?\\d+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for HoldAfterExhalePattern widget.
  FocusNode? holdAfterExhalePatternFocusNode;
  TextEditingController? holdAfterExhalePatternTextController;
  String? Function(BuildContext, String?)?
      holdAfterExhalePatternTextControllerValidator;
  String? _holdAfterExhalePatternTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^\\d*\\.?\\d+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Hour widget.
  FocusNode? hourFocusNode;
  TextEditingController? hourTextController;
  String? Function(BuildContext, String?)? hourTextControllerValidator;
  // State field(s) for Minutes widget.
  FocusNode? minutesFocusNode;
  TextEditingController? minutesTextController;
  String? Function(BuildContext, String?)? minutesTextControllerValidator;
  // State field(s) for Seconds widget.
  FocusNode? secondsFocusNode;
  TextEditingController? secondsTextController;
  String? Function(BuildContext, String?)? secondsTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inhalePatternTextControllerValidator =
        _inhalePatternTextControllerValidator;
    holdAfterInhalePatternTextControllerValidator =
        _holdAfterInhalePatternTextControllerValidator;
    exhalePatternTextControllerValidator =
        _exhalePatternTextControllerValidator;
    holdAfterExhalePatternTextControllerValidator =
        _holdAfterExhalePatternTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    inhalePatternFocusNode?.dispose();
    inhalePatternTextController?.dispose();

    holdAfterInhalePatternFocusNode?.dispose();
    holdAfterInhalePatternTextController?.dispose();

    exhalePatternFocusNode?.dispose();
    exhalePatternTextController?.dispose();

    holdAfterExhalePatternFocusNode?.dispose();
    holdAfterExhalePatternTextController?.dispose();

    hourFocusNode?.dispose();
    hourTextController?.dispose();

    minutesFocusNode?.dispose();
    minutesTextController?.dispose();

    secondsFocusNode?.dispose();
    secondsTextController?.dispose();
  }
}
