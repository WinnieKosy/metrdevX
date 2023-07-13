part of 'auth_bloc.dart';

enum LoginState { success, failure }

class AuthState {
  final String? email;
  final String? password;
  final bool isLoading;
  final LoginState? loginState;
  final String? errorMessage;

  AuthState({
    this.password,
    this.email,
    this.isLoading = false,
    this.loginState,
    this.errorMessage,
  });

  AuthState copyWith({
    String? email,
    String? password,
    bool? status,
    LoginState? loginState,
    String? errorMessage,
  }) {
    return AuthState(
      errorMessage: errorMessage ?? this.errorMessage,
      email: email ?? this.email,
      password: password ?? this.password,
      isLoading: status ?? this.isLoading,
      loginState: loginState ?? this.loginState,
    );
  }

  bool get showButton {
    return (email != null && password != null);
  }
}

// class AuthInitial extends AuthState {}
//
// class LoadingAuthState extends AuthState {}
