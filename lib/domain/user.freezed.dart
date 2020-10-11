// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call({String name, String surname, String location, String photoUrl}) {
    return _User(
      name: name,
      surname: surname,
      location: location,
      photoUrl: photoUrl,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get name;
  String get surname;
  String get location;
  String get photoUrl;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String name, String surname, String location, String photoUrl});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object location = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      surname: surname == freezed ? _value.surname : surname as String,
      location: location == freezed ? _value.location : location as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String name, String surname, String location, String photoUrl});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object location = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_User(
      name: name == freezed ? _value.name : name as String,
      surname: surname == freezed ? _value.surname : surname as String,
      location: location == freezed ? _value.location : location as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

class _$_User extends _User {
  const _$_User({this.name, this.surname, this.location, this.photoUrl})
      : super._();

  @override
  final String name;
  @override
  final String surname;
  @override
  final String location;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'User(name: $name, surname: $surname, location: $location, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(photoUrl);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {String name,
      String surname,
      String location,
      String photoUrl}) = _$_User;

  @override
  String get name;
  @override
  String get surname;
  @override
  String get location;
  @override
  String get photoUrl;
  @override
  _$UserCopyWith<_User> get copyWith;
}
