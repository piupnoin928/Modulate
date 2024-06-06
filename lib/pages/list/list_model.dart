import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'list_widget.dart' show ListWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListModel extends FlutterFlowModel<ListWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = true;

  List<String> breathingTechniques = [
    'Diaphragmatic Breathing',
    'Box Breathing'
  ];
  void addToBreathingTechniques(String item) => breathingTechniques.add(item);
  void removeFromBreathingTechniques(String item) =>
      breathingTechniques.remove(item);
  void removeAtIndexFromBreathingTechniques(int index) =>
      breathingTechniques.removeAt(index);
  void insertAtIndexInBreathingTechniques(int index, String item) =>
      breathingTechniques.insert(index, item);
  void updateBreathingTechniquesAtIndex(int index, Function(String) updateFn) =>
      breathingTechniques[index] = updateFn(breathingTechniques[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
