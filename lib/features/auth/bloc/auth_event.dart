part of 'auth_bloc.dart';

abstract class AuthEvent {}

class AuthEventLogin extends AuthEvent {}

class AuthEventOnEmailChange extends AuthEvent {
  String email;
  AuthEventOnEmailChange({required this.email});
}

class AuthEventOnPasswordChange extends AuthEvent {
  String password;
  AuthEventOnPasswordChange({required this.password});
}
