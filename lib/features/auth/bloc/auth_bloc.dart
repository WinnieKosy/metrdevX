import 'package:bloc/bloc.dart';
import 'package:metrdev/features/auth/data/repository/auth_repo_impl.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(AuthState()) {
    on<AuthEventLogin>((event, emit) async {
      try {
        if(state.isLoading){
          return;
        }
        emit(state.copyWith(status: true));
        final authData = await _authRepository.getLogin(
          email: state.email ?? '',
          password: state.password ?? '',
        );
        emit(state.copyWith(status: false));
        if (authData != null) {
          emit(state.copyWith(loginState: LoginState.success));
        } else {
          emit(state.copyWith(loginState: LoginState.failure));
        }
      } catch (e) {
        emit(state.copyWith(status: false));
        emit(state.copyWith(
            loginState: LoginState.failure, errorMessage: e.toString()));
      }
    });

    on<AuthEventOnEmailChange>((event, emit) async {
      emit(state.copyWith(email: event.email));
    });
    on<AuthEventOnPasswordChange>((event, emit) async {
      emit(state.copyWith(password: event.password));
    });
  }
}
