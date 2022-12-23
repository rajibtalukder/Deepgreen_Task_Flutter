import 'package:design_task/screens/left_screen.dart';
import 'package:design_task/screens/right_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: const[
        LeftScreen(),
        RightScreen(),
      ],
    ));
  }
}
