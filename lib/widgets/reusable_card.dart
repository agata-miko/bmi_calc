import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final cardChild;
  final VoidCallback? onTapFunction;

  ReusableCard(
      {this.color = const Color(0xFF1D1E33),
      this.cardChild,
      this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
