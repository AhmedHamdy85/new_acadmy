import 'package:flutter/material.dart';

class DefoltTextFormFiled extends StatelessWidget {
  const DefoltTextFormFiled(
      {super.key,
      required this.inputTitel,
      this.maxLines,
      this.prefixIcon,
      this.suffixIcon,
      required this.hintText});
  final String inputTitel;
  final int? maxLines;
  final IconData? prefixIcon, suffixIcon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputTitel,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xff100E28),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          maxLines: maxLines,
          decoration: InputDecoration(
            suffixIcon: Icon(
              suffixIcon,
              //color: const Color(0xff0097EC),
            ),
            hintText: hintText,
            prefixIcon: Icon(
              prefixIcon,
              color: const Color(0xff0097EC),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xffCECECE), width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xff0097EC), width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xffEE3C3C), width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
