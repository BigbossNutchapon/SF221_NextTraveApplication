import '/backend/backend.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_page/chat_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_friends_model.dart';
export 'my_friends_model.dart';

class MyFriendsWidget extends StatefulWidget {
  const MyFriendsWidget({Key? key}) : super(key: key);

  @override
  _MyFriendsWidgetState createState() => _MyFriendsWidgetState();
}

class _MyFriendsWidgetState extends State<MyFriendsWidget> {
  late MyFriendsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyFriendsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        automaticallyImplyLeading: false,
        title: Text(
          'My Team',
          style: FlutterFlowTheme.of(context).displaySmall.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).tertiary,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              buttonSize: 48.0,
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 30.0,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StreamBuilder<List<UsersRecord>>(
                stream: queryUsersRecord(
                  queryBuilder: (usersRecord) =>
                      usersRecord.orderBy('created_time'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  List<UsersRecord> columnUsersRecordList = snapshot.data!;
                  if (columnUsersRecordList.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/noFriends@2x.png',
                        width: MediaQuery.of(context).size.width * 0.9,
                      ),
                    );
                  }
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(columnUsersRecordList.length,
                          (columnIndex) {
                        final columnUsersRecord =
                            columnUsersRecordList[columnIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).dark900,
                                      boxShadow: [
                                        BoxShadow(
                                          color: FlutterFlowTheme.of(context)
                                              .dark900,
                                          offset: Offset(0.0, 1.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 0.0,
                                      ),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ChatPageWidget(
                                              chatUser: columnUsersRecord,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(2.0, 2.0,
                                                                2.0, 2.0),
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            valueOrDefault<
                                                                String>(
                                                          columnUsersRecord
                                                              .photoUrl,
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/dark-mode-chat-xk2sj6/assets/dx4gzvbpilu4/avatar@2x.png',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      columnUsersRecord
                                                          .displayName!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium,
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Text(
                                                          columnUsersRecord
                                                              .email!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: Color(0xFF82878C),
                                                  size: 24.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00090F13),
              ),
              child: wrapWithModel(
                model: _model.navbarModel,
                updateCallback: () => setState(() {}),
                child: NavbarWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
