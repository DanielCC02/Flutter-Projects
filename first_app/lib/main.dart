import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 96, 29, 212),
            Color.fromARGB(255, 24, 6, 55),
          ],
        ),
      ),
    ),
  );
}
