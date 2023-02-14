import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color initialColor;
  ReusableCard({this.initialColor = const Color(0xFF1D1E33)});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: initialColor,
      ),
    );
  }
}
