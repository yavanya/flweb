part of 'login_page_bloc.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState.initial() = _Initial;
  const factory LoginPageState.authenticated(bool isAuthenticated) = _Authenticated;
  const factory LoginPageState.authenticating() = _Authenticating;
}