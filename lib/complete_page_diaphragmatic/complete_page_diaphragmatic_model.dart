import '/flutter_flow/flutter_flow_util.dart';
import 'complete_page_diaphragmatic_widget.dart'
    show CompletePageDiaphragmaticWidget;
import 'package:flutter/material.dart';

class CompletePageDiaphragmaticModel
    extends FlutterFlowModel<CompletePageDiaphragmaticWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
