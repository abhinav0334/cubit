import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_cubit_example/states/login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void login(String username, String password) {
    // Mock login logic
    if (username == 'demo' && password == '123456') {
      emit(const LoginSuccess(resCode: 200));
    } else {
      emit(const LoginFailure(resCode: 400));
    }
  }
}
