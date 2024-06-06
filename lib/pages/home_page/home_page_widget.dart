import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200.0,
                  height: 150.0,
                  decoration: BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/lotus-svgrepo-com_(1).svg',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                      alignment: Alignment(0.0, -0.3),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Modulate',
                    style: GoogleFonts.getFont(
                      'Jost',
                      color: Color(0xFF3BE8B0),
                      fontSize: 50.0,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                    child: Text(
                      'Wind down and control your breath \nwith an app built for doing so.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Jost',
                        color: Color(0xFFA3A9BB),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 11.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('List');
                      },
                      text: 'Breathing Techniques',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF3BE8B0),
                        textStyle: GoogleFonts.getFont(
                          'Jost',
                          color: Color(0xFF14181B),
                          fontWeight: FontWeight.w500,
                        ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 11.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Customization');
                      },
                      text: 'Customize the experience',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(9.0, 0.0, 9.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF3BE8B0),
                        textStyle: GoogleFonts.getFont(
                          'Jost',
                          color: Color(0xFF14181B),
                          fontWeight: FontWeight.w500,
                        ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 2.5),
                    child: Text(
                      'Made by Jahnsen Louie Agajona & John Aarol Peñaflor',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Jost',
                            color: Color(0xFFA3A9BB),
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
