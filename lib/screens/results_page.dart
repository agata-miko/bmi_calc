import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResults;
  final String resultText;
  final String interpretation;

  ResultsPage({
    required this.resultText,
    required this.bmiResults,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your result',
              textAlign: TextAlign.center,
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    resultText,
                    textAlign: TextAlign.center,
                    style: kResultTestStyle,
                  ),
                  Text(
                    bmiResults,
                    textAlign: TextAlign.center,
                    style: kBMIResultStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            route: () => Navigator.pushNamed(context, 'input_page'),
          ),
        ],
      ),
    );
  }
}
