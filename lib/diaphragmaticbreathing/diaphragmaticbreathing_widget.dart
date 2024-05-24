import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'diaphragmaticbreathing_model.dart';
export 'diaphragmaticbreathing_model.dart';

class DiaphragmaticbreathingWidget extends StatefulWidget {
  const DiaphragmaticbreathingWidget({super.key});

  @override
  State<DiaphragmaticbreathingWidget> createState() =>
      _DiaphragmaticbreathingWidgetState();
}

class _DiaphragmaticbreathingWidgetState
    extends State<DiaphragmaticbreathingWidget> {
  late DiaphragmaticbreathingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiaphragmaticbreathingModel());

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
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xFF14181B),
          appBar: AppBar(
            backgroundColor: const Color(0xFF14181B),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF3BE8B0),
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('List');
              },
            ),
            title: Text(
              'Diaphragmatic Breathing',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Jost',
                    color: const Color(0xFF3BE8B0),
                    letterSpacing: 0.0,
                  ),
            ),
            actions: const [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 240.0,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/pexels-corey-dupree-864195-10038998.jpg',
                            width: double.infinity,
                            height: 200.0,
                            fit: BoxFit.cover,
                            alignment: const Alignment(0.0, -0.65),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 6.0,
                                  sigmaY: 2.0,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: 64.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0xFF3BE8B0),
                                      ),
                                    ),
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: const FaIcon(
                                      FontAwesomeIcons.wind,
                                      color: Color(0xFF3BE8B0),
                                      size: 44.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Text(
                      'Diaphragmatic Breathing (4 - 2 - 6 - 0)',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Jost',
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Container(
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  '#OxygenationImprovement',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Jost',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Container(
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent2,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  '#BellyRising',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Jost',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                          .divide(const SizedBox(width: 8.0))
                          .addToStart(const SizedBox(width: 16.0))
                          .addToEnd(const SizedBox(width: 16.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: 500.0,
                      height: 560.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF14181B),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: MarkdownBody(
                          data:
                              '''Diaphragmatic breathing is a deep breathing technique that involves conscious engagement of the diaphragm, allowing for more efficient air exchange and numerous health benefits. It's particularly effective in reducing physiological and psychological stress, improving pulmonary function, and enhancing relaxation[[1]](https://europepmc.org/article/MED/31436595).


### Benefits of Diaphragmatic Breathing:
- **Stress Reduction**: By activating the parasympathetic nervous system, diaphragmatic breathing promotes relaxation and reduces stress levels. It has been shown to improve biomarkers of stress such as respiratory rate and salivary cortisol levels[[1]](https://europepmc.org/article/MED/31436595).
- **Blood Pressure Management**: Regular practice can lead to improvements in systolic and diastolic blood pressure, contributing to better cardiovascular health[[1]](https://europepmc.org/article/MED/31436595).
- **Mental Health**: It can also improve psychological well-being, reducing symptoms of anxiety and depression as measured by self-report tools like the Depression Anxiety Stress Scales-21 (DASS-21)[[1]](https://europepmc.org/article/MED/31436595).
- **Respiratory Health**: Enhances pulmonary function, which is particularly beneficial for individuals with respiratory conditions like chronic obstructive pulmonary disease (COPD)[[2]](https://www.mdpi.com/2305-6320/7/10/65).

### References:
[[1]](https://europepmc.org/article/MED/31436595): [Effectiveness of diaphragmatic breathing for reducing physiological and psychological stress in adults: a quantitative systematic review](https://europepmc.org/article/MED/31436595)

[[2]](https://www.mdpi.com/2305-6320/7/10/65): [Effects of Diaphragmatic Breathing on Health: A Narrative Review](https://www.mdpi.com/2305-6320/7/10/65)''',
                          selectable: true,
                          onTapLink: (_, url, __) => launchURL(url!),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Set the timer',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Jost',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.hourTextController,
                                focusNode: _model.hourFocusNode,
                                onFieldSubmitted: (_) async {
                                  FFAppState().update(() {
                                    FFAppState().hoursInputToMIlliSeconds =
                                        int.parse(
                                            _model.hourTextController.text);
                                  });
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
                                validator: _model.hourTextControllerValidator
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
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: _model.minutesTextController,
                                focusNode: _model.minutesFocusNode,
                                onFieldSubmitted: (_) async {
                                  FFAppState().update(() {
                                    FFAppState().minutesInputToMIlliSeconds =
                                        int.parse(
                                            _model.minutesTextController.text);
                                  });
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
                                validator: _model.minutesTextControllerValidator
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
                                    FFAppState().update(() {
                                      FFAppState().secondsInputToMIlliSeconds =
                                          int.parse(_model
                                              .secondsTextController.text);
                                    });
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
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('RelaxandLetGo_Diaphragmatic');

                        FFAppState().update(() {
                          FFAppState().totalMilliseconds =
                              functions.convertToMilliseconds(
                                  int.tryParse(_model.hourTextController.text),
                                  int.tryParse(
                                      _model.minutesTextController.text),
                                  int.tryParse(
                                      _model.secondsTextController.text));
                        });
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                      },
                      text: 'Start Session',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.transparent,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                ].divide(const SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
