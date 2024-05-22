import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'complete_page_four_seven_eight_model.dart';
export 'complete_page_four_seven_eight_model.dart';

class CompletePageFourSevenEightWidget extends StatefulWidget {
  const CompletePageFourSevenEightWidget({super.key});

  @override
  State<CompletePageFourSevenEightWidget> createState() =>
      _CompletePageFourSevenEightWidgetState();
}

class _CompletePageFourSevenEightWidgetState
    extends State<CompletePageFourSevenEightWidget> {
  late CompletePageFourSevenEightModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompletePageFourSevenEightModel());
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
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                  child: Text(
                    'Complete',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Roboto Slab',
                          fontSize: 50.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 280.0, 0.0, 0.0),
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
                      context.pushNamed('HomePage');
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
