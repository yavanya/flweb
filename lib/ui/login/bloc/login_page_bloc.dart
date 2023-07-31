import 'package:bloc/bloc.dart';
import 'package:flweb/repository/services/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'login_page_event.dart';
part 'login_page_state.dart';
part 'login_page_bloc.freezed.dart';

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  final _authService = GetIt.I.get<AuthService>();
  LoginPageBloc() : super(const _Initial()) {
    on<LoginPageEvent>((event, emit) {
      event.when(
        submit: (email, password) async {
          emit(const LoginPageState.authenticating());
          final isAuth = await _authService.login(email, password);
          add(LoginPageEvent.authenticate(isAuth));
        },
        authenticate: (isAuthenticated) {
          emit(LoginPageState.authenticated(isAuthenticated));
        },
      );
    });
  }
}
