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
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ocean_breath_model.dart';
export 'ocean_breath_model.dart';

class OceanBreathWidget extends StatefulWidget {
  const OceanBreathWidget({super.key});

  @override
  State<OceanBreathWidget> createState() => _OceanBreathWidgetState();
}

class _OceanBreathWidgetState extends State<OceanBreathWidget> {
  late OceanBreathModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OceanBreathModel());

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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF14181B),
        appBar: AppBar(
          backgroundColor: Color(0xFF14181B),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF3BE8B0),
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('List');
            },
          ),
          title: Text(
            'Ocean Breath',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Jost',
                  color: Color(0xFF3BE8B0),
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
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
                Container(
                  height: 240.0,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.asset(
                          'assets/images/pexels-miaversa-53441205-11409226.jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 6.0,
                                sigmaY: 2.0,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Container(
                                  width: 64.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Color(0xFF3BE8B0),
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.cottonBureau,
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
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Text(
                    'Ocean Breath (4 - 16 - 8 - 0)',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
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
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Text(
                                '#VictoriousBreath',
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
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
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Text(
                                '#UjjayiBreathing',
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
                        .divide(SizedBox(width: 8.0))
                        .addToStart(SizedBox(width: 16.0))
                        .addToEnd(SizedBox(width: 16.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    width: 500.0,
                    height: 680.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF14181B),
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: MarkdownBody(
                        data:
                            '''The Ocean Breath, or Ujjayi Pranayama, is a captivating breathing practice that evokes the soothing rhythm of the tides. As described by yoga scholar and teacher, Judith Hanson Lasater, it is "the breath that sounds like the ocean" (Lasater, 2000).

To perform the Ocean Breath, one gently constricts the throat, creating a subtle, ocean-like sound as the air passes through. Inhale slowly and deeply, feeling the breath travel down into the belly, then exhale with the same gentle resistance, as if you're whispering the sound of "Haaa" (Rosen, 2002).

This practice, as described by yoga teacher and author, Donna Farhi, "allows you to ride the waves of your own breath" (Farhi, 2000). The steady, oceanic rhythm has a hypnotic quality, lulling both the mind and body into a state of deep relaxation.

Yoga master B.K.S. Iyengar likens the Ocean Breath to the "sound of the primordial vibration of the universe," connecting the practitioner to the ancient rhythms of nature (Iyengar, 1966). As you synchronize your breath with this cosmic pulse, you may find a sense of grounding and centeredness wash over you.

The Ocean Breath is not merely a physical exercise, but a meditative practice that can cultivate a profound sense of inner peace. As yoga teacher Richard Rosen suggests, "It's like listening to the ocean while sitting on the shore" (Rosen, 2002).


## References:

Farhi, D. (2000). Yoga Mind, Body & Spirit: A Return to Wholeness. Henry Holt and Company.

Iyengar, B.K.S. (1966). Light on Yoga. Schocken Books.

Lasater, J.H. (2000). Yoga Journal's Yoga Basics: The Essential Beginner's Guide to Yoga for a Lifetime of Health and Fitness. Henry Holt and Company.

Rosen, R. (2002). The Yoga of Breath: A Step-by-Step Guide to Pranayama. Shambhala Publications.''',
                        selectable: true,
                        onTapLink: (_, url, __) => launchURL(url!),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
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
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
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
                                    int.parse(_model.hourTextController.text);
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
                            alignment: AlignmentDirectional(0.0, 0.0),
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
                                FFAppState().minutesInputToMIlliSeconds =
                                    int.parse(
                                        _model.minutesTextController.text);
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
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: TextFormField(
                                controller: _model.secondsTextController,
                                focusNode: _model.secondsFocusNode,
                                onFieldSubmitted: (_) async {
                                  FFAppState().secondsInputToMIlliSeconds =
                                      int.parse(
                                          _model.secondsTextController.text);
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
                                validator: _model.secondsTextControllerValidator
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
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('RelaxandLetGo_OceanBreath');

                      FFAppState().totalMilliseconds =
                          functions.convertToMilliseconds(
                              int.tryParse(_model.hourTextController.text),
                              int.tryParse(_model.minutesTextController.text),
                              int.tryParse(_model.secondsTextController.text));
                      FFAppState().update(() {});
                      if (_model.formKey.currentState == null ||
                          !_model.formKey.currentState!.validate()) {
                        return;
                      }
                    },
                    text: 'Start Session',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Jost',
                                color: Color(0xFF3BE8B0),
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Color(0xFF3BE8B0),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
