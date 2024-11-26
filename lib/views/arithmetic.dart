import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  String result = "";

  void calculateAddition() {
    setState(() {
      final num1 = double.tryParse(num1Controller.text);
      final num2 = double.tryParse(num2Controller.text);
      if (num1 != null && num2 != null) {
        result = (num1 + num2).toString();
      } else {
        result = "Invalid Input";
      }
    });
  }

  void calculateSubtraction() {
    setState(() {
      final num1 = double.tryParse(num1Controller.text);
      final num2 = double.tryParse(num2Controller.text);
      if (num1 != null && num2 != null) {
        result = (num1 - num2).toString();
      } else {
        result = "Invalid Input";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Simple Arithmetic Calculator ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'Enter first number'),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'Enter second number'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateAddition,
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(20))),
              child: const Text("Addition"),
            ),
            const SizedBox(
              width: double.infinity,
              height: 20,
            ),
            ElevatedButton(
              onPressed: calculateSubtraction,
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
              ),
              child: const Text("Subtraction"),
            ),
            const SizedBox(height: 20),
            Text(
              "Result: $result",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
