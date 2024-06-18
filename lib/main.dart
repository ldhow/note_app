import 'package:flutter/material.dart';
import 'package:test_drive/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // we will use routes to navigate between the sceens
      initialRoute: '/',
      routes: {
        "/": (context) => const HomeScreen(),
      },
      theme: ThemeData(
          // textTheme: const TextTheme(
          //   displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          //   bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
          // ),
          useMaterial3: true),
    );
  }
}
