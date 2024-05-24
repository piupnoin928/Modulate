import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  set globalInhaleSeconds(int value) {
    _globalInhaleSeconds = value;
    prefs.setInt('ff_globalInhaleSeconds', value);
  }

  int _globalExhaleSeconds = 0;
  int get globalExhaleSeconds => _globalExhaleSeconds;
  set globalExhaleSeconds(int value) {
    _globalExhaleSeconds = value;
  }

  int _globalHoldAfterInhaleSeconds = 0;
  int get globalHoldAfterInhaleSeconds => _globalHoldAfterInhaleSeconds;
  set globalHoldAfterInhaleSeconds(int value) {
    _globalHoldAfterInhaleSeconds = value;
  }

  int _hoursInputToMIlliSeconds = 0;
  int get hoursInputToMIlliSeconds => _hoursInputToMIlliSeconds;
  set hoursInputToMIlliSeconds(int value) {
    _hoursInputToMIlliSeconds = value;
  }

  int _minutesInputToMIlliSeconds = 0;
  int get minutesInputToMIlliSeconds => _minutesInputToMIlliSeconds;
  set minutesInputToMIlliSeconds(int value) {
    _minutesInputToMIlliSeconds = value;
  }

  int _secondsInputToMIlliSeconds = 0;
  int get secondsInputToMIlliSeconds => _secondsInputToMIlliSeconds;
  set secondsInputToMIlliSeconds(int value) {
    _secondsInputToMIlliSeconds = value;
  }

  int _totalMilliseconds = 60000;
  int get totalMilliseconds => _totalMilliseconds;
  set totalMilliseconds(int value) {
    _totalMilliseconds = value;
  }

  int _globalHoldAfterExhaleSeconds = 0;
  int get globalHoldAfterExhaleSeconds => _globalHoldAfterExhaleSeconds;
  set globalHoldAfterExhaleSeconds(int value) {
    _globalHoldAfterExhaleSeconds = value;
  }

  bool _isTrue = true;
  bool get isTrue => _isTrue;
  set isTrue(bool value) {
    _isTrue = value;
  }

  double _finalGlobalInhaleSeconds = 0.0;
  double get finalGlobalInhaleSeconds => _finalGlobalInhaleSeconds;
  set finalGlobalInhaleSeconds(double value) {
    _finalGlobalInhaleSeconds = value;
    prefs.setDouble('ff_finalGlobalInhaleSeconds', value);
  }

  double _finalGlobalExhaleSeconds = 0.0;
  double get finalGlobalExhaleSeconds => _finalGlobalExhaleSeconds;
  set finalGlobalExhaleSeconds(double value) {
    _finalGlobalExhaleSeconds = value;
    prefs.setDouble('ff_finalGlobalExhaleSeconds', value);
  }

  double _finalGlobalHoldInhaleSeconds = 0.0;
  double get finalGlobalHoldInhaleSeconds => _finalGlobalHoldInhaleSeconds;
  set finalGlobalHoldInhaleSeconds(double value) {
    _finalGlobalHoldInhaleSeconds = value;
    prefs.setDouble('ff_finalGlobalHoldInhaleSeconds', value);
  }

  double _finalGlobalHoldExhaleSeconds = 0.0;
  double get finalGlobalHoldExhaleSeconds => _finalGlobalHoldExhaleSeconds;
  set finalGlobalHoldExhaleSeconds(double value) {
    _finalGlobalHoldExhaleSeconds = value;
    prefs.setDouble('ff_finalGlobalHoldExhaleSeconds', value);
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
