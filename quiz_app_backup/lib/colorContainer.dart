import 'package:flutter/material.dart';
import 'package:quiz_app/ButtonStart.dart';

class Colorcontainer extends StatelessWidget {
  const Colorcontainer({super.key, required this.color});

  final Color color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: Center(child: Buttonstart()),
    );
  }
}
