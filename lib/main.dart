import 'package:flutter/material.dart';
import 'package:second_app/gradient_container.dart';

void main() {
  // creates entire UI widget tree.. running the app
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromRGBO(0, 82, 73, 0), Color.fromARGB(255, 0, 30, 65)),
      ),
    ),
  );
}
