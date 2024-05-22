import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth/tokotoscreen1.dart';
import 'package:flutter_application_1/screens/auth/tokotoscreen2.dart';
import 'package:flutter_application_1/screens/auth/tokotoscreen3.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        TokotoScreen(),
        TokotoScreen2(),
        TokotoScreen3(),
      ],
    );
  }
}
