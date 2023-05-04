import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _BOT =
        prefs.getStringList('ff_BOT')?.map((path) => path.ref).toList() ?? _BOT;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _BOT = [
    FirebaseFirestore.instance.doc('/users/JiLdxLwE3qTZ2VnVNzANI2VY5hq2'),
    FirebaseFirestore.instance.doc('/users/ChWsz4jz4NfWeb2ag2ZloszfSXS2')
  ];
  List<DocumentReference> get BOT => _BOT;
  set BOT(List<DocumentReference> _value) {
    _BOT = _value;
    prefs.setStringList('ff_BOT', _value.map((x) => x.path).toList());
  }

  void addToBOT(DocumentReference _value) {
    _BOT.add(_value);
    prefs.setStringList('ff_BOT', _BOT.map((x) => x.path).toList());
  }

  void removeFromBOT(DocumentReference _value) {
    _BOT.remove(_value);
    prefs.setStringList('ff_BOT', _BOT.map((x) => x.path).toList());
  }

  void removeAtIndexFromBOT(int _index) {
    _BOT.removeAt(_index);
    prefs.setStringList('ff_BOT', _BOT.map((x) => x.path).toList());
  }

  DocumentReference? _KFC =
      FirebaseFirestore.instance.doc('/chats/r6sdAKAImsRwIP63CejM');
  DocumentReference? get KFC => _KFC;
  set KFC(DocumentReference? _value) {
    _KFC = _value;
  }

  bool _visible = false;
  bool get visible => _visible;
  set visible(bool _value) {
    _visible = _value;
  }

  bool _Homebtn = true;
  bool get Homebtn => _Homebtn;
  set Homebtn(bool _value) {
    _Homebtn = _value;
  }

  bool _Addbtn = false;
  bool get Addbtn => _Addbtn;
  set Addbtn(bool _value) {
    _Addbtn = _value;
  }

  bool _Mapbtn = false;
  bool get Mapbtn => _Mapbtn;
  set Mapbtn(bool _value) {
    _Mapbtn = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
