import 'package:bloc/bloc.dart';
import 'package:metrdev/features/auth/data/repository/auth_repo_impl.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(AuthState()) {
    on<AuthEventLogin>((event, emit) async {
      try {
        emit(state.copyWith(status: true));
        final authData = await _authRepository.getLogin(
            email: state.email ?? '', password: state.password ?? '');
        print('ggg');
        if (authData != null) {
          emit(state.copyWith(loginState: LoginState.success));
          print('yyy');
        } else {
          emit(state.copyWith(loginState: LoginState.failure));
          print('fff');
        }
      } catch (e) {
        emit(state.copyWith(loginState: LoginState.failure));
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
