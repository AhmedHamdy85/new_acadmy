import 'package:flutter/material.dart';

class DefoltCheckBox extends StatelessWidget {
  const DefoltCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final bool value;
  final void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        side: const BorderSide(
          color: Color(0xffCECECE),
          width: 2,
        ),
        value: value,
        onChanged: onChanged);
  }
}
