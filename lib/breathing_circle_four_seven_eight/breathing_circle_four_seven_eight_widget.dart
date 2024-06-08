import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'breathing_circle_four_seven_eight_model.dart';
export 'breathing_circle_four_seven_eight_model.dart';

class BreathingCircleFourSevenEightWidget extends StatefulWidget {
  const BreathingCircleFourSevenEightWidget({super.key});

  @override
  State<BreathingCircleFourSevenEightWidget> createState() =>
      _BreathingCircleFourSevenEightWidgetState();
}

class _BreathingCircleFourSevenEightWidgetState
    extends State<BreathingCircleFourSevenEightWidget> {
  late BreathingCircleFourSevenEightModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BreathingCircleFourSevenEightModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: FlutterFlowTimer(
                  initialTime: FFAppState().totalMilliseconds == 0
                      ? 60000
                      : FFAppState().totalMilliseconds,
                  getDisplayTime: (value) =>
                      StopWatchTimer.getDisplayTime(value, milliSecond: false),
                  controller: _model.timerController,
                  updateStateInterval: const Duration(milliseconds: 1000),
                  onChanged: (value, displayTime, shouldUpdate) {
                    _model.timerMilliseconds = value;
                    _model.timerValue = displayTime;
                    if (shouldUpdate) setState(() {});
                  },
                  onEnded: () async {
                    if (Navigator.of(context).canPop()) {
                      context.pop();
                    }
                    context.pushNamed('CompletePage');
                  },
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Jost',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: SizedBox(
                    width: 300.0,
                    height: 300.0,
                    child: custom_widgets.CupertinoBreathe(
                      width: 300.0,
                      height: 300.0,
                      inhaleSeconds: 4.0,
                      exhaleSeconds: 8.0,
                      holdAfterInhaleSeconds: 7.0,
                      holdAfterExhaleSeconds: 0.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.white,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: const Icon(
                      Icons.close_sharp,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed('fourseveneightBreathing');

                      _model.timerController.onStopTimer();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
