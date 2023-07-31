part of 'login_page_bloc.dart';

@freezed
class LoginPageEvent with _$LoginPageEvent {
  const factory LoginPageEvent.submit(String email, String password) = _Submit;
  const factory LoginPageEvent.authenticate(bool isAuthenticated) = _Authenticate;
}
