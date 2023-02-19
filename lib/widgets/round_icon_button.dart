import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  late IconData icon;
  VoidCallback? onTapFunction;
  RoundIconButton({required this.icon, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onTapFunction,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
