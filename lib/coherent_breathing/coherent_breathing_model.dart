import '/flutter_flow/flutter_flow_util.dart';
import 'coherent_breathing_widget.dart' show CoherentBreathingWidget;
import 'package:flutter/material.dart';

class CoherentBreathingModel extends FlutterFlowModel<CoherentBreathingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
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
  void initState(BuildContext context) {}

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
