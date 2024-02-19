import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class DefoltBackGroundForLogInScreens extends StatelessWidget {
  const DefoltBackGroundForLogInScreens({
    super.key,
    required this.form,
  });
  final Widget form;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(logInImage), fit: BoxFit.cover),
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(login), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 2,
                  color: Colors.white,
                ),
              ],
            ),
            form
          ],
        )
      ],
    );
  }
}
