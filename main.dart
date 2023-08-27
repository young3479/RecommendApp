import 'package:flutter/material.dart';
//import 'package:wwc_recommend_vs/screens/splash_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:wwc_recommend_vs/screens/login.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(debugShowCheckedModeBanner: false, home: LogIn());
  }
}