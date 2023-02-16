import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final cardChild;
  ReusableCard({this.color = const Color(0xFF1D1E33), this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
