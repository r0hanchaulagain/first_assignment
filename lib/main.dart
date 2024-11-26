import 'package:flutter/material.dart';
import 'package:first_assignment/views/dashboard.dart';
import 'package:first_assignment/views/arithmetic.dart';
import 'package:first_assignment/views/simple_interest.dart';
import 'package:first_assignment/views/area_of_circle.dart';

void main() {
  runApp(const FirstAssignmentApp());
}

class FirstAssignmentApp extends StatelessWidget {
  const FirstAssignmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Assignment',
      initialRoute: '/dashboard',
      routes: {
        '/dashboard': (context) => const Dashboard(),
        '/arithmetic': (context) => const ArithmeticScreen(),
        '/simple-interest': (context) => const SimpleInterestScreen(),
        '/area-of-circle': (context) => const AreaOfCircleScreen(),
      },
    );
  }
}
