import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStateNotifier extends ChangeNotifier {
  SystemUiMode _systemUiMode = SystemUiMode.immersive;

  SystemUiMode get systemUiMode => _systemUiMode;

  set systemUiMode(SystemUiMode mode) {
    _systemUiMode = mode;
    notifyListeners();
  }

  void toggleSystemUiMode() {
    if (_systemUiMode == SystemUiMode.immersive) {
      _systemUiMode = SystemUiMode.edgeToEdge;
    } else {
      _systemUiMode = SystemUiMode.immersive;
    }
    notifyListeners();
  }
}