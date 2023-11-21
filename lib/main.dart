import 'package:flutter/material.dart';
import 'package:gestionpc/Demarrage.dart';
import 'package:gestionpc/FormulaireAttribution.dart';
import 'package:gestionpc/Notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Demarrage(),
      home:NotificationPage(),
    );
  }
}
