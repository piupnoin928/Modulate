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
import 'bellows_breath_model.dart';
export 'bellows_breath_model.dart';

class BellowsBreathWidget extends StatefulWidget {
  const BellowsBreathWidget({super.key});

  @override
  State<BellowsBreathWidget> createState() => _BellowsBreathWidgetState();
}

class _BellowsBreathWidgetState extends State<BellowsBreathWidget> {
  late BellowsBreathModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BellowsBreathModel());

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
            'Bellows Breath',
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
                          'assets/images/pexels-lazarevkirill-9986905.jpg',
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
                    'Bellows Breath (2 - 0 - 2 - 0)',
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
                                '#RapidBreathing',
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
                                '#RespiratoryStimulation',
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
                    height: 1075.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF14181B),
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: MarkdownBody(
                        data:
                            '''Bellows Breath, also known as "Bhastrika" in yoga, is a transformative pranayama technique that goes beyond simple respiratory benefits. This forceful, rhythmic breathing practice acts as a catalyst, igniting the inner fires of the body and mind to forge a profound state of physiological and psychological arousal.

As the practitioner sits in a poised, upright position, the initial normal breaths allow them to settle into the present moment, releasing the distractions of the external world. Then, with intention, they begin the rapid, powerful inhalations and exhalations through the nose. The air rushes in and out, mirroring the bellows of a forge, generating heat and energy within (Saraswati, 2002).

Each forceful inhale draws in a fresh surge of oxygen, flooding the lungs and stimulating the circulatory system. The quick exhalations expel stagnant air, releasing built-up carbon dioxide and toxins. This dynamic exchange of gases invigorates the body on a cellular level, infusing the tissues with revitalizing prana, or life force (Iyengar, 1966).

The rapid breathing patterns of Bhastrika activate the sympathetic nervous system, triggering the release of catecholamine hormones like adrenaline and noradrenaline (Jerath et al., 2006). This hormonal rush creates a state of physiological arousal, characterized by increased heart rate, blood pressure, and respiratory rate. The practitioner experiences a sense of alertness, focus, and elevated mood (Raghuraj & Telles, 2008).

Beyond the physical, Bhastrika ignites an internal fire that radiates outward. The rapid breathing and hormonal changes are believed to purify the nadis, or subtle energy channels, clearing blockages and harmonizing the flow of prana (Saraswati, 2002). This internal heat, generated by the dynamic breath, is said to have a cleansing and transformative effect on the practitioner's subtle energy system.

As the practitioner continues the rhythmic cycle, a subtle warmth begins to permeate the body, emanating from the core. The mind, once scattered, now finds stability and clarity, primed for deeper states of meditation and self-inquiry (Iyengar, 1966). This state of physiological and psychological arousal, combined with the purification of the subtle energy system, is believed to facilitate profound spiritual and personal transformation.

Bhastrika is not merely a breathing exercise; it is a transformative practice that harnesses the power of the breath to catalyze profound shifts in both the body and the mind. Through this fiery, dynamic pranayama, the practitioner ignites the inner forge, fueling their journey of self-discovery and spiritual evolution.

## References:

Iyengar, B. K. S. (1966). Light on Yoga. Schocken Books.

Jerath, R., Edry, J. W., Barnes, V. A., & Jerath, V. (2006). Physiology of long-term practice of pranayama. Indian Journal of Physiology and Pharmacology, 50(4), 357-368.

Raghuraj, P., & Telles, S. (2008). Immediate effect of specific nostril manipulating yoga breathing practices on autonomic and respiratory variables. Applied Psychophysiology and Biofeedback, 33(2), 65-75.

Saraswati, S. S. (2002). Asana Pranayama Mudra Bandha. Yoga Publications Trust.''',
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
                      context.pushNamed('RelaxandLetGo_BellowsBreath');

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
