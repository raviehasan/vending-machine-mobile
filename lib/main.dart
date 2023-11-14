import 'package:flutter/material.dart';
import 'screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vending Machine',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(33, 33, 33, 1)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
