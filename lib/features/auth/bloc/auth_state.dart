part of 'auth_bloc.dart';

enum LoginState { success, failure }

class AuthState {
  final String? email;
  final String? password;
  final bool status;
  final LoginState? loginState;

  AuthState({this.password, this.email, this.status = false, this.loginState});

  AuthState copyWith(
      {String? email, String? password, bool? status, LoginState? loginState}) {
    return AuthState(
        email: email ?? this.email,
        password: password ?? this.password,
        status: status ?? this.status,
        loginState: loginState ?? this.loginState);
  }

  bool get showButton {
    return (email != null && password != null);
  }
}

// class AuthInitial extends AuthState {}
//
// class LoadingAuthState extends AuthState {}
