import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'breathing_circle_box_breathing_widget.dart'
    show BreathingCircleBoxBreathingWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class BreathingCircleBoxBreathingModel
    extends FlutterFlowModel<BreathingCircleBoxBreathingWidget> {
  ///  Local state fields for this page.

  int inhaleSeconds = 4;

  int holdAfterInhaleSeconds = 2;

  int exhaleSeconds = 6;

  int? holdAfterExhaleSeconds = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(0, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timerController.dispose();
  }
}
