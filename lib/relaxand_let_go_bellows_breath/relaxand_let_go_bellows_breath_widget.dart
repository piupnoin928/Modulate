import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'relaxand_let_go_bellows_breath_model.dart';
export 'relaxand_let_go_bellows_breath_model.dart';

class RelaxandLetGoBellowsBreathWidget extends StatefulWidget {
  const RelaxandLetGoBellowsBreathWidget({super.key});

  @override
  State<RelaxandLetGoBellowsBreathWidget> createState() =>
      _RelaxandLetGoBellowsBreathWidgetState();
}

class _RelaxandLetGoBellowsBreathWidgetState
    extends State<RelaxandLetGoBellowsBreathWidget>
    with TickerProviderStateMixin {
  late RelaxandLetGoBellowsBreathModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RelaxandLetGoBellowsBreathModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
    });

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'timerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 8.0),
                  child: Text(
                    'Relax',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Roboto Slab',
                          fontSize: 50.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Text(
                  'Starting session in',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: Color(0xFFA3A9BB),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ),
              FlutterFlowTimer(
                initialTime: _model.timerInitialTimeMs,
                getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                  value,
                  hours: false,
                  minute: false,
                  milliSecond: false,
                ),
                controller: _model.timerController,
                updateStateInterval: Duration(milliseconds: 1000),
                onChanged: (value, displayTime, shouldUpdate) {
                  _model.timerMilliseconds = value;
                  _model.timerValue = displayTime;
                  if (shouldUpdate) setState(() {});
                },
                onEnded: () async {
                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  }
                  context.pushNamed('BreathingCircle_BellowsBreath');
                },
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Roboto',
                      color: Color(0xFFA3A9BB),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ).animateOnPageLoad(animationsMap['timerOnPageLoadAnimation']!),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 240.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.white,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.close_sharp,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () async {
                      if (Navigator.of(context).canPop()) {
                        context.pop();
                      }
                      context.pushNamed('BellowsBreath');

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
