import '/flutter_flow/flutter_flow_util.dart';
import 'complete_page_cuztomized_widget.dart' show CompletePageCuztomizedWidget;
import 'package:flutter/material.dart';

class CompletePageCuztomizedModel
    extends FlutterFlowModel<CompletePageCuztomizedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
