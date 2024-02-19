import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: width,
          height: 1,
          color: Color(0xffDEDEDE),
        ),
        Text('Or'),
        Container(
          width: width,
          height: 1,
          color: Color(0xffDEDEDE),
        )
      ],
    );
  }
}
