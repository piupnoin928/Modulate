import '/flutter_flow/flutter_flow_util.dart';
import 'complete_page_box_breathing_widget.dart'
    show CompletePageBoxBreathingWidget;
import 'package:flutter/material.dart';

class CompletePageBoxBreathingModel
    extends FlutterFlowModel<CompletePageBoxBreathingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
