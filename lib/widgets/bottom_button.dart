import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final VoidCallback route;

  BottomButton({required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: route,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
        padding: EdgeInsets.only(bottom: 10),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
