import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class LoginCubit extends Cubit<LogInStates> {
  LoginCubit() : super(LogInInatialAtate());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool isCheck = false;

  changeChekBox() {
    isCheck = !isCheck;
    emit(ChangeLogInCheckBoxState());
  }

  bool isVisiable = false;
  changevisiabilityPassword() {
    isVisiable = !isVisiable;
    emit(LoginChangeVisiabilityPasswordState());
  }
}
