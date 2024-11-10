import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Admin',
      theme: ThemeData(
        primaryColor: const Color(0xFF00875A),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00875A),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
