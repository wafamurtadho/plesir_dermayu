import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:plesir_dermayu/pages/welcome_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppStateNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        // Set the system UI mode based on the appState
        SystemChrome.setEnabledSystemUIMode(appState.systemUiMode);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(scaffoldBackgroundColor: Colors.white),
          home: WelcomePage(),
        );
      },
    );
  }
}

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
