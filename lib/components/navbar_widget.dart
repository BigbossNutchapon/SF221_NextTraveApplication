import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/create_post/create_post_widget.dart';
import '/pages/home/home_widget.dart';
import '/pages/showlocationpage/showlocationpage_widget.dart';
import '/pages/showlocationpage_have/showlocationpage_have_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({Key? key}) : super(key: key);

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Container(
            width: 390.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.6, -0.15),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        FFAppState().Homebtn = true;
                        FFAppState().Addbtn = false;
                        FFAppState().Mapbtn = false;
                      });
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeWidget(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.home,
                      color: valueOrDefault<Color>(
                        FFAppState().Homebtn
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).tertiary,
                        FlutterFlowTheme.of(context).tertiary,
                      ),
                      size: 30.0,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.6, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        FFAppState().Homebtn = false;
                        FFAppState().Addbtn = false;
                        FFAppState().Mapbtn = true;
                      });
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowlocationpageWidget(),
                        ),
                      );
                    },
                    onLongPress: () async {
                      setState(() {
                        FFAppState().Homebtn = false;
                        FFAppState().Addbtn = false;
                        FFAppState().Mapbtn = true;
                      });
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowlocationpageHaveWidget(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.map_outlined,
                      color: valueOrDefault<Color>(
                        FFAppState().Mapbtn
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).tertiary,
                        FlutterFlowTheme.of(context).tertiary,
                      ),
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).tertiary,
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().Homebtn = false;
                      FFAppState().Addbtn = true;
                      FFAppState().Mapbtn = false;
                    });
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreatePostWidget(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.add_rounded,
                    color: valueOrDefault<Color>(
                      FFAppState().Addbtn
                          ? FlutterFlowTheme.of(context).primary
                          : FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    size: 60.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
