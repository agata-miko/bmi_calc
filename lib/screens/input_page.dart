import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/reusable_card.dart';
import '../widgets/sex_card.dart';

const double bottomContainerHeight = 70.0;
const bottomContainerColor = Color(0xFFEB1555);

const Color inactiveCardColor = Color(0xFF111328);
const Color activeCardColor = Color(0xFF1D1E33);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const sexCard(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const sexCard(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
