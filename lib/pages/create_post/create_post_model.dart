import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/home_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePostModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for userName widget.
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  // State field(s) for Date widget.
  TextEditingController? dateController1;
  String? Function(BuildContext, String?)? dateController1Validator;
  // State field(s) for Date widget.
  TextEditingController? dateController2;
  String? Function(BuildContext, String?)? dateController2Validator;
  // State field(s) for shortBio widget.
  TextEditingController? shortBioController;
  String? Function(BuildContext, String?)? shortBioControllerValidator;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    userNameController?.dispose();
    dateController1?.dispose();
    dateController2?.dispose();
    shortBioController?.dispose();
  }

  /// Additional helper methods are added here.

}
