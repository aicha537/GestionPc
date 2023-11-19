import 'package:flutter/material.dart';

class FormulAttribution extends StatelessWidget {
  const FormulAttribution({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: null,
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            height: size.height * 0.25,
            width: size.width,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            height: size.height * 0.75,
            width: size.width,
          ),
        ],
      ),
    );
  }
}
