import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_page/chat_page_widget.dart';
import '/pages/home/home_widget.dart';
import '/pages/my_friends/my_friends_widget.dart';
import '/pages/showlocationpage/showlocationpage_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_main_copy_model.dart';
export 'chat_main_copy_model.dart';

class ChatMainCopyWidget extends StatefulWidget {
  const ChatMainCopyWidget({Key? key}) : super(key: key);

  @override
  _ChatMainCopyWidgetState createState() => _ChatMainCopyWidgetState();
}

class _ChatMainCopyWidgetState extends State<ChatMainCopyWidget> {
  late ChatMainCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatMainCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference!),
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
        final chatMainCopyUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 250),
                  reverseDuration: Duration(milliseconds: 250),
                  child: MyFriendsWidget(),
                ),
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
              child: Icon(
                Icons.add_comment_rounded,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 30.0,
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            title: Text(
              'All Chats',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 4.0,
          ),
          body: SafeArea(
            child: StreamBuilder<List<ChatsRecord>>(
              stream: queryChatsRecord(
                queryBuilder: (chatsRecord) => chatsRecord
                    .where('users', arrayContains: currentUserReference)
                    .orderBy('last_message_time', descending: true),
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
                List<ChatsRecord> containerChatsRecordList = snapshot.data!;
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final allChats =
                                    containerChatsRecordList.toList();
                                if (allChats.isEmpty) {
                                  return Center(
                                    child: EmptyListWidget(),
                                  );
                                }
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: allChats.length,
                                  itemBuilder: (context, allChatsIndex) {
                                    final allChatsItem =
                                        allChats[allChatsIndex];
                                    return StreamBuilder<FFChatInfo>(
                                      stream: FFChatManager.instance
                                          .getChatInfo(
                                              chatRecord: allChatsItem),
                                      builder: (context, snapshot) {
                                        final chatInfo = snapshot.data ??
                                            FFChatInfo(allChatsItem);
                                        return FFChatPreview(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ChatPageWidget(
                                                chatUser: chatInfo.otherUsers
                                                            .length ==
                                                        1
                                                    ? chatInfo
                                                        .otherUsersList.first
                                                    : null,
                                                chatRef: chatInfo
                                                    .chatRecord.reference,
                                              ),
                                            ),
                                          ),
                                          lastChatText:
                                              chatInfo.chatPreviewMessage(),
                                          lastChatTime:
                                              allChatsItem.lastMessageTime,
                                          seen: allChatsItem.lastMessageSeenBy!
                                              .contains(currentUserReference),
                                          title: chatInfo.chatPreviewTitle(),
                                          userProfilePic:
                                              chatInfo.chatPreviewPic(),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          unreadColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryOld,
                                          titleTextStyle: GoogleFonts.getFont(
                                            'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                          ),
                                          dateTextStyle: GoogleFonts.getFont(
                                            'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .grayIcon,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14.0,
                                          ),
                                          previewTextStyle: GoogleFonts.getFont(
                                            'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .grayIcon,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0,
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 3.0, 8.0, 3.0),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Container(
                                width: 400.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 60.0,
                                              icon: Icon(
                                                Icons.home,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 30.0,
                                              ),
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomeWidget(),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    170.0, 0.0, 0.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 60.0,
                                              icon: Icon(
                                                Icons.map_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 30.0,
                                              ),
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ShowlocationpageWidget(),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.01, 1.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 25.0, 25.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 70.0,
                                      icon: Icon(
                                        Icons.add_circle_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 80.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
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
              },
            ),
          ),
        );
      },
    );
  }
}
