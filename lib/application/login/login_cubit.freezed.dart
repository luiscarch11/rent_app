// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {@required bool isLoading,
      @required String email,
      @required String password,
      @required Option<bool> successLogin,
      @required bool showPassword}) {
    return _LoginState(
      isLoading: isLoading,
      email: email,
      password: password,
      successLogin: successLogin,
      showPassword: showPassword,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  bool get isLoading;
  String get email;
  String get password;
  Option<bool> get successLogin;
  bool get showPassword;

  $LoginStateCopyWith<LoginState> get copyWith;
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String email,
      String password,
      Option<bool> successLogin,
      bool showPassword});
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object email = freezed,
    Object password = freezed,
    Object successLogin = freezed,
    Object showPassword = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      successLogin: successLogin == freezed
          ? _value.successLogin
          : successLogin as Option<bool>,
      showPassword:
          showPassword == freezed ? _value.showPassword : showPassword as bool,
    ));
  }
}

abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String email,
      String password,
      Option<bool> successLogin,
      bool showPassword});
}

class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object email = freezed,
    Object password = freezed,
    Object successLogin = freezed,
    Object showPassword = freezed,
  }) {
    return _then(_LoginState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      successLogin: successLogin == freezed
          ? _value.successLogin
          : successLogin as Option<bool>,
      showPassword:
          showPassword == freezed ? _value.showPassword : showPassword as bool,
    ));
  }
}

class _$_LoginState with DiagnosticableTreeMixin implements _LoginState {
  const _$_LoginState(
      {@required this.isLoading,
      @required this.email,
      @required this.password,
      @required this.successLogin,
      @required this.showPassword})
      : assert(isLoading != null),
        assert(email != null),
        assert(password != null),
        assert(successLogin != null),
        assert(showPassword != null);

  @override
  final bool isLoading;
  @override
  final String email;
  @override
  final String password;
  @override
  final Option<bool> successLogin;
  @override
  final bool showPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(isLoading: $isLoading, email: $email, password: $password, successLogin: $successLogin, showPassword: $showPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('successLogin', successLogin))
      ..add(DiagnosticsProperty('showPassword', showPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.successLogin, successLogin) ||
                const DeepCollectionEquality()
                    .equals(other.successLogin, successLogin)) &&
            (identical(other.showPassword, showPassword) ||
                const DeepCollectionEquality()
                    .equals(other.showPassword, showPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(successLogin) ^
      const DeepCollectionEquality().hash(showPassword);

  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {@required bool isLoading,
      @required String email,
      @required String password,
      @required Option<bool> successLogin,
      @required bool showPassword}) = _$_LoginState;

  @override
  bool get isLoading;
  @override
  String get email;
  @override
  String get password;
  @override
  Option<bool> get successLogin;
  @override
  bool get showPassword;
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
