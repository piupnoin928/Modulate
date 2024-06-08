import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'customization_model.dart';
export 'customization_model.dart';

class CustomizationWidget extends StatefulWidget {
  const CustomizationWidget({super.key});

  @override
  State<CustomizationWidget> createState() => _CustomizationWidgetState();
}

class _CustomizationWidgetState extends State<CustomizationWidget> {
  late CustomizationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomizationModel());

    _model.inhalePatternTextController ??= TextEditingController(
        text: FFAppState().finalGlobalHoldInhaleSeconds.toString());
    _model.inhalePatternFocusNode ??= FocusNode();

    _model.holdAfterInhalePatternTextController ??= TextEditingController(
        text: FFAppState().finalGlobalHoldInhaleSeconds.toString());
    _model.holdAfterInhalePatternFocusNode ??= FocusNode();

    _model.exhalePatternTextController ??= TextEditingController(
        text: FFAppState().finalGlobalExhaleSeconds.toString());
    _model.exhalePatternFocusNode ??= FocusNode();

    _model.holdAfterExhalePatternTextController ??= TextEditingController(
        text: FFAppState().finalGlobalHoldExhaleSeconds.toString());
    _model.holdAfterExhalePatternFocusNode ??= FocusNode();

    _model.hourTextController ??= TextEditingController();
    _model.hourFocusNode ??= FocusNode();

    _model.minutesTextController ??= TextEditingController();
    _model.minutesFocusNode ??= FocusNode();

    _model.secondsTextController ??= TextEditingController();
    _model.secondsFocusNode ??= FocusNode();
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
        backgroundColor: const Color(0xFF14181B),
        appBar: AppBar(
          backgroundColor: const Color(0xFF14181B),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Customized Breathing Technique',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Jost',
                    color: const Color(0xFF3BE8B0),
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            42.0, 10.0, 42.0, 20.0),
                        child: Text(
                          'Customized breathing patterns are personalized exercises designed to fit the unique requirements of an individual\'s physiology and goals. By syncing breath with specific rhythms or cues, these patterns can help deepen relaxation, reduce stress, and improve cognitive function.',
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Jost',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(42.0, 5.0, 0.0, 5.0),
                        child: Text(
                          'Breathing pattern',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Jost',
                                    color: const Color(0xFF3BE8B0),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                42.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Inhale',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                130.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 20.0,
                              fillColor: const Color(0xFF3BE8B0),
                              icon: const FaIcon(
                                FontAwesomeIcons.minus,
                                color: Color(0xFF14181B),
                                size: 5.0,
                              ),
                              onPressed: () async {
                                if (_model.formKey1.currentState == null ||
                                    !_model.formKey1.currentState!.validate()) {
                                  return;
                                }
                                FFAppState().finalGlobalHoldInhaleSeconds =
                                    double.parse(_model
                                        .inhalePatternTextController.text);
                                setState(() {});
                                FFAppState()
                                    .finalGlobalHoldInhaleSeconds = FFAppState()
                                        .finalGlobalHoldInhaleSeconds +
                                    (FFAppState().finalGlobalHoldInhaleSeconds >
                                            0.0
                                        ? -1.0
                                        : 0.0);
                                FFAppState().update(() {});
                                setState(() {
                                  _model.inhalePatternTextController?.text =
                                      FFAppState()
                                          .finalGlobalHoldInhaleSeconds
                                          .toString();
                                });
                              },
                            ),
                          ),
                          Form(
                            key: _model.formKey1,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: 50.0,
                                height: 30.0,
                                decoration: const BoxDecoration(),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, -5.0),
                                  child: SizedBox(
                                    width: 50.0,
                                    child: TextFormField(
                                      controller:
                                          _model.inhalePatternTextController,
                                      focusNode: _model.inhalePatternFocusNode,
                                      onFieldSubmitted: (_) async {
                                        FFAppState()
                                                .finalGlobalHoldInhaleSeconds =
                                            functions.convertToDouble(_model
                                                .inhalePatternTextController
                                                .text)!;
                                        FFAppState().update(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.done,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Jost',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      maxLength: 2,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .inhalePatternTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('^\\d+(\\.\\d+)?\$'))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 5.0,
                            borderWidth: 1.0,
                            buttonSize: 20.0,
                            fillColor: const Color(0xFF3BE8B0),
                            icon: const Icon(
                              Icons.add,
                              color: Color(0xFF14181B),
                              size: 5.0,
                            ),
                            onPressed: () async {
                              if (_model.formKey1.currentState == null ||
                                  !_model.formKey1.currentState!.validate()) {
                                return;
                              }
                              FFAppState().finalGlobalHoldInhaleSeconds =
                                  double.parse(
                                      _model.inhalePatternTextController.text);
                              FFAppState().update(() {});
                              FFAppState().finalGlobalHoldInhaleSeconds =
                                  FFAppState().finalGlobalHoldInhaleSeconds +
                                      1.0;
                              FFAppState().update(() {});
                              setState(() {
                                _model.inhalePatternTextController?.text =
                                    FFAppState()
                                        .finalGlobalHoldInhaleSeconds
                                        .toString();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              42.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Time in seconds',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: const Color(0xFFA3A9BB),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                42.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Hold',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                139.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 20.0,
                              fillColor: const Color(0xFF3BE8B0),
                              icon: const FaIcon(
                                FontAwesomeIcons.minus,
                                color: Color(0xFF14181B),
                                size: 5.0,
                              ),
                              onPressed: () async {
                                if (_model.formKey3.currentState == null ||
                                    !_model.formKey3.currentState!.validate()) {
                                  return;
                                }
                                FFAppState().finalGlobalHoldInhaleSeconds =
                                    double.parse(_model
                                        .holdAfterInhalePatternTextController
                                        .text);
                                setState(() {});
                                FFAppState()
                                    .finalGlobalHoldInhaleSeconds = FFAppState()
                                        .finalGlobalHoldInhaleSeconds +
                                    (FFAppState().finalGlobalHoldInhaleSeconds >
                                            0.0
                                        ? -1.0
                                        : 0.0);
                                FFAppState().update(() {});
                                setState(() {
                                  _model.holdAfterInhalePatternTextController
                                          ?.text =
                                      FFAppState()
                                          .finalGlobalHoldInhaleSeconds
                                          .toString();
                                });
                              },
                            ),
                          ),
                          Form(
                            key: _model.formKey3,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: 50.0,
                                height: 30.0,
                                decoration: const BoxDecoration(),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, -5.0),
                                  child: SizedBox(
                                    width: 50.0,
                                    child: TextFormField(
                                      controller: _model
                                          .holdAfterInhalePatternTextController,
                                      focusNode: _model
                                          .holdAfterInhalePatternFocusNode,
                                      onFieldSubmitted: (_) async {
                                        FFAppState()
                                                .finalGlobalHoldInhaleSeconds =
                                            functions.convertToDouble(_model
                                                .holdAfterInhalePatternTextController
                                                .text)!;
                                        FFAppState().update(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.done,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Jost',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      maxLength: 2,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .holdAfterInhalePatternTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('^\\d+(\\.\\d+)?\$'))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 5.0,
                            borderWidth: 1.0,
                            buttonSize: 20.0,
                            fillColor: const Color(0xFF3BE8B0),
                            icon: const Icon(
                              Icons.add,
                              color: Color(0xFF14181B),
                              size: 5.0,
                            ),
                            onPressed: () async {
                              if (_model.formKey3.currentState == null ||
                                  !_model.formKey3.currentState!.validate()) {
                                return;
                              }
                              FFAppState().finalGlobalHoldInhaleSeconds =
                                  double.parse(_model
                                      .holdAfterInhalePatternTextController
                                      .text);
                              FFAppState().update(() {});
                              FFAppState().finalGlobalHoldInhaleSeconds =
                                  FFAppState().finalGlobalHoldInhaleSeconds +
                                      1.0;
                              FFAppState().update(() {});
                              setState(() {
                                _model.holdAfterInhalePatternTextController
                                        ?.text =
                                    FFAppState()
                                        .finalGlobalHoldInhaleSeconds
                                        .toString();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              42.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Time in seconds',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: const Color(0xFFA3A9BB),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                42.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Exhale',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                126.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 20.0,
                              fillColor: const Color(0xFF3BE8B0),
                              icon: const FaIcon(
                                FontAwesomeIcons.minus,
                                color: Color(0xFF14181B),
                                size: 5.0,
                              ),
                              onPressed: () async {
                                if (_model.formKey5.currentState == null ||
                                    !_model.formKey5.currentState!.validate()) {
                                  return;
                                }
                                FFAppState().finalGlobalExhaleSeconds =
                                    double.parse(_model
                                        .exhalePatternTextController.text);
                                FFAppState().update(() {});
                                FFAppState().finalGlobalExhaleSeconds =
                                    FFAppState().finalGlobalExhaleSeconds +
                                        (FFAppState().finalGlobalExhaleSeconds >
                                                0.0
                                            ? -1.0
                                            : 0.0);
                                setState(() {});
                                setState(() {
                                  _model.exhalePatternTextController?.text =
                                      FFAppState()
                                          .finalGlobalExhaleSeconds
                                          .toString();
                                });
                              },
                            ),
                          ),
                          Form(
                            key: _model.formKey5,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: 50.0,
                                height: 30.0,
                                decoration: const BoxDecoration(),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, -5.0),
                                  child: SizedBox(
                                    width: 50.0,
                                    child: TextFormField(
                                      controller:
                                          _model.exhalePatternTextController,
                                      focusNode: _model.exhalePatternFocusNode,
                                      onFieldSubmitted: (_) async {
                                        FFAppState().finalGlobalExhaleSeconds =
                                            functions.convertToDouble(_model
                                                .exhalePatternTextController
                                                .text)!;
                                        FFAppState().update(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.done,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Jost',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      maxLength: 2,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .exhalePatternTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('^\\d+(\\.\\d+)?\$'))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 5.0,
                            borderWidth: 1.0,
                            buttonSize: 20.0,
                            fillColor: const Color(0xFF3BE8B0),
                            icon: const Icon(
                              Icons.add,
                              color: Color(0xFF14181B),
                              size: 5.0,
                            ),
                            onPressed: () async {
                              if (_model.formKey5.currentState == null ||
                                  !_model.formKey5.currentState!.validate()) {
                                return;
                              }
                              FFAppState().finalGlobalExhaleSeconds =
                                  double.parse(
                                      _model.exhalePatternTextController.text);
                              FFAppState().update(() {});
                              FFAppState().finalGlobalExhaleSeconds =
                                  FFAppState().finalGlobalExhaleSeconds + 1.0;
                              FFAppState().update(() {});
                              setState(() {
                                _model.exhalePatternTextController?.text =
                                    FFAppState()
                                        .finalGlobalExhaleSeconds
                                        .toString();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              42.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Time in seconds',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: const Color(0xFFA3A9BB),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                42.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Hold',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                139.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 20.0,
                              fillColor: const Color(0xFF3BE8B0),
                              icon: const FaIcon(
                                FontAwesomeIcons.minus,
                                color: Color(0xFF14181B),
                                size: 5.0,
                              ),
                              onPressed: () async {
                                if (_model.formKey4.currentState == null ||
                                    !_model.formKey4.currentState!.validate()) {
                                  return;
                                }
                                FFAppState().finalGlobalHoldExhaleSeconds =
                                    double.parse(_model
                                        .holdAfterExhalePatternTextController
                                        .text);
                                setState(() {});
                                FFAppState()
                                    .finalGlobalHoldExhaleSeconds = FFAppState()
                                        .finalGlobalHoldExhaleSeconds +
                                    (FFAppState().finalGlobalHoldExhaleSeconds >
                                            0.0
                                        ? -1.0
                                        : 0.0);
                                FFAppState().update(() {});
                                setState(() {
                                  _model.holdAfterExhalePatternTextController
                                          ?.text =
                                      FFAppState()
                                          .finalGlobalHoldExhaleSeconds
                                          .toString();
                                });
                              },
                            ),
                          ),
                          Form(
                            key: _model.formKey4,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: 50.0,
                                height: 30.0,
                                decoration: const BoxDecoration(),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, -5.0),
                                  child: SizedBox(
                                    width: 50.0,
                                    child: TextFormField(
                                      controller: _model
                                          .holdAfterExhalePatternTextController,
                                      focusNode: _model
                                          .holdAfterExhalePatternFocusNode,
                                      onFieldSubmitted: (_) async {
                                        FFAppState()
                                                .finalGlobalHoldExhaleSeconds =
                                            functions.convertToDouble(_model
                                                .holdAfterExhalePatternTextController
                                                .text)!;
                                        FFAppState().update(() {});
                                      },
                                      autofocus: true,
                                      textInputAction: TextInputAction.done,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Jost',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      maxLength: 2,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model
                                          .holdAfterExhalePatternTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('^\\d+(\\.\\d+)?\$'))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 5.0,
                            borderWidth: 1.0,
                            buttonSize: 20.0,
                            fillColor: const Color(0xFF3BE8B0),
                            icon: const Icon(
                              Icons.add,
                              color: Color(0xFF14181B),
                              size: 5.0,
                            ),
                            onPressed: () async {
                              if (_model.formKey4.currentState == null ||
                                  !_model.formKey4.currentState!.validate()) {
                                return;
                              }
                              FFAppState().finalGlobalHoldExhaleSeconds =
                                  double.parse(_model
                                      .holdAfterExhalePatternTextController
                                      .text);
                              FFAppState().update(() {});
                              FFAppState().finalGlobalHoldExhaleSeconds =
                                  FFAppState().finalGlobalHoldExhaleSeconds +
                                      1.0;
                              FFAppState().update(() {});
                              setState(() {
                                _model.holdAfterExhalePatternTextController
                                        ?.text =
                                    FFAppState()
                                        .finalGlobalHoldExhaleSeconds
                                        .toString();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                42.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Time in seconds',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: const Color(0xFFA3A9BB),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            42.0, 0.0, 0.0, 10.0),
                        child: Text(
                          'Session Duration',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Jost',
                                    color: const Color(0xFF3BE8B0),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Form(
                        key: _model.formKey2,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.hourTextController,
                                    focusNode: _model.hourFocusNode,
                                    onFieldSubmitted: (_) async {
                                      FFAppState().hoursInputToMIlliSeconds =
                                          int.parse(
                                              _model.hourTextController.text);
                                      FFAppState().update(() {});
                                    },
                                    autofocus: false,
                                    textInputAction: TextInputAction.done,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Jost',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'HH',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Jost',
                                            color: const Color(0xFFA3A9BB),
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Jost',
                                          color: const Color(0xFF3BE8B0),
                                          letterSpacing: 0.0,
                                        ),
                                    textAlign: TextAlign.center,
                                    maxLength: 2,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .hourTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('^[0-9]*\$|^\$'))
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    ':',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Jost',
                                          color: const Color(0xFF3BE8B0),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.minutesTextController,
                                    focusNode: _model.minutesFocusNode,
                                    onFieldSubmitted: (_) async {
                                      FFAppState().minutesInputToMIlliSeconds =
                                          int.parse(_model
                                              .minutesTextController.text);
                                      FFAppState().update(() {});
                                    },
                                    autofocus: false,
                                    textInputAction: TextInputAction.done,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Jost',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'MM',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Jost',
                                            color: const Color(0xFFA3A9BB),
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Jost',
                                          color: const Color(0xFF3BE8B0),
                                          letterSpacing: 0.0,
                                        ),
                                    textAlign: TextAlign.center,
                                    maxLength: 2,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .minutesTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('^[0-9]*\$|^\$'))
                                    ],
                                  ),
                                ),
                                Text(
                                  ':',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Jost',
                                        color: const Color(0xFF3BE8B0),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.secondsTextController,
                                      focusNode: _model.secondsFocusNode,
                                      onFieldSubmitted: (_) async {
                                        FFAppState()
                                                .secondsInputToMIlliSeconds =
                                            int.parse(_model
                                                .secondsTextController.text);
                                        FFAppState().update(() {});
                                      },
                                      autofocus: false,
                                      textInputAction: TextInputAction.done,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'SS',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Jost',
                                              color: const Color(0xFFA3A9BB),
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Jost',
                                            color: const Color(0xFF3BE8B0),
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      maxLength: 2,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .secondsTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('^[0-9]*\$|^\$'))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('RelaxandLetGo_Customized');

                            FFAppState().totalMilliseconds =
                                functions.convertToMilliseconds(
                                    int.tryParse(
                                        _model.hourTextController.text),
                                    int.tryParse(
                                        _model.minutesTextController.text),
                                    int.tryParse(
                                        _model.secondsTextController.text));
                            FFAppState().update(() {});
                            FFAppState().finalGlobalInhaleSeconds =
                                functions.convertToDouble(
                                    _model.inhalePatternTextController.text)!;
                            FFAppState().update(() {});
                            FFAppState().finalGlobalHoldInhaleSeconds =
                                functions.convertToDouble(_model
                                    .holdAfterInhalePatternTextController
                                    .text)!;
                            FFAppState().update(() {});
                            FFAppState().finalGlobalExhaleSeconds =
                                functions.convertToDouble(
                                    _model.exhalePatternTextController.text)!;
                            FFAppState().update(() {});
                            FFAppState().finalGlobalHoldExhaleSeconds =
                                functions.convertToDouble(_model
                                    .holdAfterExhalePatternTextController
                                    .text)!;
                            FFAppState().update(() {});
                            if (_model.formKey2.currentState == null ||
                                !_model.formKey2.currentState!.validate()) {
                              return;
                            }
                            if (_model.formKey1.currentState == null ||
                                !_model.formKey1.currentState!.validate()) {
                              return;
                            }
                            if (_model.formKey3.currentState == null ||
                                !_model.formKey3.currentState!.validate()) {
                              return;
                            }
                            if (_model.formKey5.currentState == null ||
                                !_model.formKey5.currentState!.validate()) {
                              return;
                            }
                            if (_model.formKey4.currentState == null ||
                                !_model.formKey4.currentState!.validate()) {
                              return;
                            }
                          },
                          text: 'Start Session',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF14181B),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Jost',
                                  color: const Color(0xFF3BE8B0),
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Color(0xFF3BE8B0),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
