import 'package:flutter/material.dart';
import 'package:gestionpc/Demarrage.dart';
import 'package:gestionpc/FormulaireAttribution.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Demarrage(),
        home: FormulAttribution());
  }
}
