import 'package:flutter/material.dart';
import 'home.dart'; // Importez la classe SplashWidget depuis home.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashWidget(), // Utilisez la classe SplashWidget comme page d'accueil
    );
  }
}
