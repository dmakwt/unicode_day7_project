import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController gradeController = TextEditingController();
  String result = 'N/A';

  void calculate() {
    double grade = double.parse(gradeController.text);

    if (grade >= 90) {
      result = "A";
    } else if (grade >= 80) {
      result = "B";
    } else if (grade >= 70) {
      result = "C";
    } else if (grade >= 60) {
      result = "D";
    } else {
      result = "F";
    }

    print(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Grade Calculator'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              controller: gradeController,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red)),
              onPressed: () {
                calculate();
              },
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(38),
            child: Text(
              result,
              style: TextStyle(
                fontSize: 70,
                color: Colors.red.shade300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
