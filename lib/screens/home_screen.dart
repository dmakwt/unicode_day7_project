import 'package:flutter/material.dart';
import 'package:flutter_grade_calcualtor/screens/result_screen.dart';

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
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            result: result,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        elevation: 4,
        title: const Text(
          'Grade Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade50, Colors.white],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: gradeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter Grade',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(color: Colors.blue.shade600, width: 2),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  calculate();
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(38),
              child: Text(
                result,
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
