import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.orange,
        primaryColor: Colors.orange.shade700,

      ),
     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
     home: const HomeScreen(),
    );
  }
}
