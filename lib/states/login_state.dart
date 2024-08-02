import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {
  final int resCode;

  const LoginSuccess({required this.resCode});

  @override
  List<Object?> get props => [resCode];
}

class LoginFailure extends LoginState {
  final int resCode;

  const LoginFailure({required this.resCode});

  @override
  List<Object?> get props => [resCode];
}
