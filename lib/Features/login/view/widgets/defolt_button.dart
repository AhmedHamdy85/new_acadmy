import 'package:flutter/material.dart';

class ButtonForLoginScreens extends StatelessWidget {
  const ButtonForLoginScreens({
    super.key,
    required this.text,
    this.onTap,
    required this.width,
  });
  final String text;
  final Function()? onTap;
  final double width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}
