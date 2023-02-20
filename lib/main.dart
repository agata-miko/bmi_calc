import 'package:bmi_calc/screens/results_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'results_page': (context) => ResultsPage(),
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Colors.black),
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: InputPage(),
    );
  }
}
