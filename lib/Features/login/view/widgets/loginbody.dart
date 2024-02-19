import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_acadmy/Features/login/view/widgets/loginform.dart';

import '../../view_model/cubit/cubit.dart';
import '../../view_model/cubit/states.dart';
import 'background.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LogInStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return DefoltBackGroundForLogInScreens(
          form: LogInForm(
            width: MediaQuery.of(context).size.width * 0.25,
            hight: MediaQuery.of(context).size.width * 0.4,
          ),
        );
      },
    );
  }
}
