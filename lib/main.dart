import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth/signupscreen.dart';

// import 'screens/auth/tokotoscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 175, 99, 247)),
        useMaterial3: true,
      ),
      home: SignupScreen(),
    );
  }
}



