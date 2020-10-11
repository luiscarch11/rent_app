part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required bool isLoading,
    @required String email,
    @required String password,
    @required Option<bool> successLogin,
    @required bool showPassword,
  }) = _LoginState;
  factory LoginState.initial() => LoginState(
        isLoading: false,
        email: '',
        password: '',
        successLogin: none(),
        showPassword: false,
      );
}
