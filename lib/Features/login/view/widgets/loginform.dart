import 'package:flutter/material.dart';
import 'package:new_acadmy/core/defoltcheckbox.dart';
import 'package:new_acadmy/core/defolttextformfiled.dart';
import 'package:solar/solar.dart';

import '../../../../core/constants.dart';
import '../../view_model/cubit/cubit.dart';
import 'companes_container.dart';
import 'defolt_button.dart';
import 'text_button.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key, required this.width, required this.hight});
  final double width, hight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          border: Border.all(color: Color(0xffDEDEDE), width: 3),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Color(0xff000000).withOpacity(0.25), blurRadius: 16)
          ]),
      child: LayoutBuilder(builder: (context, constrains) {
        var localWidth = constrains.maxWidth;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Welcome back',
                style: TextStyle(
                    color: Color(0xff100E28),
                    fontSize: MediaQuery.of(context).size.width * 0.017),
              ),
              Text(
                'Continue with',
                style: TextStyle(
                    color: Color(0xff797979), fontSize: localWidth * 0.03),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GoogelFacbookTwiterContainer(
                    localWidth: localWidth,
                    image: google,
                    companyName: 'Googel',
                  ),
                  GoogelFacbookTwiterContainer(
                    localWidth: localWidth,
                    image: facebook,
                    companyName: 'FaceBook',
                  ),
                  GoogelFacbookTwiterContainer(
                    localWidth: localWidth,
                    image: twitter,
                    companyName: 'Twitter',
                  ),
                ],
              ),
              DefoltTextFormFiled(
                  prefixIcon: SolarBold.letter,
                  inputTitel: 'E-mail',
                  hintText: 'E-mail@gmail.com'),
              DefoltTextFormFiled(
                  prefixIcon: SolarBold.lock_keyhole_minimalistic,
                  suffixIcon: Icons.remove_red_eye_outlined,
                  inputTitel: 'Password',
                  hintText: 'Password'),
              Row(
                children: [
                  DefoltCheckBox(
                    value: LoginCubit.get(context).isCheck,
                    onChanged: (v) {
                      LoginCubit.get(context).changeChekBox();
                      print('login ${LoginCubit.get(context).isCheck}');
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      color: Color(0xFF797979),
                      fontSize: localWidth * 0.04,
                      fontWeight: FontWeight.w500,
                      height: 1.80,
                    ),
                  ),
                  Spacer(),
                  TextButtonForLogInScreens(
                    localWidth: localWidth,
                    text: 'Forqot password ?',
                    // onTap: () {
                    //   Go_To(context, ForgetPasswordScreen());
                    // },
                  ),
                ],
              ),
              ButtonForLoginScreens(
                width: localWidth,
                text: 'LogIn',
                onTap: () {
                  // Go_To(context, HomeScreen());
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont Have an account? ',
                    style: TextStyle(
                        color: Color(0xff797979), fontSize: localWidth * 0.04),
                  ),
                  TextButtonForLogInScreens(
                    localWidth: localWidth,
                    text: 'Sin Up',
                    onTap: () {
                      //  Go_To(context, const SuinUpScreen());
                    },
                  )
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
