import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _globalInhaleSeconds =
          prefs.getInt('ff_globalInhaleSeconds') ?? _globalInhaleSeconds;
    });
    _safeInit(() {
      _finalGlobalInhaleSeconds =
          prefs.getDouble('ff_finalGlobalInhaleSeconds') ??
              _finalGlobalInhaleSeconds;
    });
    _safeInit(() {
      _finalGlobalExhaleSeconds =
          prefs.getDouble('ff_finalGlobalExhaleSeconds') ??
              _finalGlobalExhaleSeconds;
    });
    _safeInit(() {
      _finalGlobalHoldInhaleSeconds =
          prefs.getDouble('ff_finalGlobalHoldInhaleSeconds') ??
              _finalGlobalHoldInhaleSeconds;
    });
    _safeInit(() {
      _finalGlobalHoldExhaleSeconds =
          prefs.getDouble('ff_finalGlobalHoldExhaleSeconds') ??
              _finalGlobalHoldExhaleSeconds;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _globalInhaleSeconds = 0;
  int get globalInhaleSeconds => _globalInhaleSeconds;
  set globalInhaleSeconds(int _value) {
    _globalInhaleSeconds = _value;
    prefs.setInt('ff_globalInhaleSeconds', _value);
  }

  int _globalExhaleSeconds = 0;
  int get globalExhaleSeconds => _globalExhaleSeconds;
  set globalExhaleSeconds(int _value) {
    _globalExhaleSeconds = _value;
  }

  int _globalHoldAfterInhaleSeconds = 0;
  int get globalHoldAfterInhaleSeconds => _globalHoldAfterInhaleSeconds;
  set globalHoldAfterInhaleSeconds(int _value) {
    _globalHoldAfterInhaleSeconds = _value;
  }

  int _hoursInputToMIlliSeconds = 0;
  int get hoursInputToMIlliSeconds => _hoursInputToMIlliSeconds;
  set hoursInputToMIlliSeconds(int _value) {
    _hoursInputToMIlliSeconds = _value;
  }

  int _minutesInputToMIlliSeconds = 0;
  int get minutesInputToMIlliSeconds => _minutesInputToMIlliSeconds;
  set minutesInputToMIlliSeconds(int _value) {
    _minutesInputToMIlliSeconds = _value;
  }

  int _secondsInputToMIlliSeconds = 0;
  int get secondsInputToMIlliSeconds => _secondsInputToMIlliSeconds;
  set secondsInputToMIlliSeconds(int _value) {
    _secondsInputToMIlliSeconds = _value;
  }

  int _totalMilliseconds = 60000;
  int get totalMilliseconds => _totalMilliseconds;
  set totalMilliseconds(int _value) {
    _totalMilliseconds = _value;
  }

  int _globalHoldAfterExhaleSeconds = 0;
  int get globalHoldAfterExhaleSeconds => _globalHoldAfterExhaleSeconds;
  set globalHoldAfterExhaleSeconds(int _value) {
    _globalHoldAfterExhaleSeconds = _value;
  }

  bool _isTrue = true;
  bool get isTrue => _isTrue;
  set isTrue(bool _value) {
    _isTrue = _value;
  }

  double _finalGlobalInhaleSeconds = 0.0;
  double get finalGlobalInhaleSeconds => _finalGlobalInhaleSeconds;
  set finalGlobalInhaleSeconds(double _value) {
    _finalGlobalInhaleSeconds = _value;
    prefs.setDouble('ff_finalGlobalInhaleSeconds', _value);
  }

  double _finalGlobalExhaleSeconds = 0.0;
  double get finalGlobalExhaleSeconds => _finalGlobalExhaleSeconds;
  set finalGlobalExhaleSeconds(double _value) {
    _finalGlobalExhaleSeconds = _value;
    prefs.setDouble('ff_finalGlobalExhaleSeconds', _value);
  }

  double _finalGlobalHoldInhaleSeconds = 0.0;
  double get finalGlobalHoldInhaleSeconds => _finalGlobalHoldInhaleSeconds;
  set finalGlobalHoldInhaleSeconds(double _value) {
    _finalGlobalHoldInhaleSeconds = _value;
    prefs.setDouble('ff_finalGlobalHoldInhaleSeconds', _value);
  }

  double _finalGlobalHoldExhaleSeconds = 0.0;
  double get finalGlobalHoldExhaleSeconds => _finalGlobalHoldExhaleSeconds;
  set finalGlobalHoldExhaleSeconds(double _value) {
    _finalGlobalHoldExhaleSeconds = _value;
    prefs.setDouble('ff_finalGlobalHoldExhaleSeconds', _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
