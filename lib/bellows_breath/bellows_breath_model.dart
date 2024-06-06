import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'bellows_breath_widget.dart' show BellowsBreathWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BellowsBreathModel extends FlutterFlowModel<BellowsBreathWidget> {
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
