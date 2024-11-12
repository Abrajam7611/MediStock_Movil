import 'package:flutter/material.dart';
import 'package:medistock_movil/screens/home_screen.dart';
import 'package:medistock_movil/screens/login_screen.dart';
// Importar la pantalla de inicio

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediStock Movil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Pantalla inicial
      routes: {
        '/home': (context) => HomeScreen(), // Definir la ruta para HomeScreen
      },
    );
  }
}
