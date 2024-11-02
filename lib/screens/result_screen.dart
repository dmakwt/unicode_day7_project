import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.result});

  String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          result,
          style: TextStyle(
            color: Colors.red,
            fontSize: 80,
            fontWeight: FontWeight.bold,
          ),
        )
            .animate()
            .fade(
              duration: Duration(seconds: 3),
            )
            .scale(delay: 500.ms),
      ),
    );
  }
}
