import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oneschool/firebase_options.dart';
import 'package:oneschool/lib/screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One School',
      theme: ThemeData().copyWith(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 8, 81, 92)),
      ),
      home: const SplashScreen(),
    );
  }
}
