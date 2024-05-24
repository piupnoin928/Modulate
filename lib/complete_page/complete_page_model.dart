import '/flutter_flow/flutter_flow_util.dart';
import 'complete_page_widget.dart' show CompletePageWidget;
import 'package:flutter/material.dart';

class CompletePageModel extends FlutterFlowModel<CompletePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
