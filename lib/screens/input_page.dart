import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/reusable_card.dart';
import '../widgets/sex_card.dart';

const double bottomContainerHeight = 70.0;
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: ReusableCard(
                  cardChild: const sexCard(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: const sexCard(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
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
