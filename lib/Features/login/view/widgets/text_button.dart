import 'package:flutter/material.dart';

class TextButtonForLogInScreens extends StatelessWidget {
  const TextButtonForLogInScreens({
    super.key,
    required this.localWidth, required this.text, this.onTap,
  });

  final double localWidth;
final String text;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Text(
        text,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Color(0xFF0097EC),
          fontSize: localWidth*0.04,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
          height: 1.80,
        ),
      ),
    );
  }
}
