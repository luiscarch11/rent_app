// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomePageStateTearOff {
  const _$HomePageStateTearOff();

// ignore: unused_element
  _HomePageState call(
      {@required int selectedIndex,
      @required bool isLoading,
      @required List<Offer> offers,
      @required User currentUser}) {
    return _HomePageState(
      selectedIndex: selectedIndex,
      isLoading: isLoading,
      offers: offers,
      currentUser: currentUser,
    );
  }
}

// ignore: unused_element
const $HomePageState = _$HomePageStateTearOff();

mixin _$HomePageState {
  int get selectedIndex;
  bool get isLoading;
  List<Offer> get offers;
  User get currentUser;

  $HomePageStateCopyWith<HomePageState> get copyWith;
}

abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call(
      {int selectedIndex,
      bool isLoading,
      List<Offer> offers,
      User currentUser});
}

class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;

  @override
  $Res call({
    Object selectedIndex = freezed,
    Object isLoading = freezed,
    Object offers = freezed,
    Object currentUser = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      offers: offers == freezed ? _value.offers : offers as List<Offer>,
      currentUser:
          currentUser == freezed ? _value.currentUser : currentUser as User,
    ));
  }
}

abstract class _$HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$HomePageStateCopyWith(
          _HomePageState value, $Res Function(_HomePageState) then) =
      __$HomePageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int selectedIndex,
      bool isLoading,
      List<Offer> offers,
      User currentUser});
}

class __$HomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$HomePageStateCopyWith<$Res> {
  __$HomePageStateCopyWithImpl(
      _HomePageState _value, $Res Function(_HomePageState) _then)
      : super(_value, (v) => _then(v as _HomePageState));

  @override
  _HomePageState get _value => super._value as _HomePageState;

  @override
  $Res call({
    Object selectedIndex = freezed,
    Object isLoading = freezed,
    Object offers = freezed,
    Object currentUser = freezed,
  }) {
    return _then(_HomePageState(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      offers: offers == freezed ? _value.offers : offers as List<Offer>,
      currentUser:
          currentUser == freezed ? _value.currentUser : currentUser as User,
    ));
  }
}

class _$_HomePageState implements _HomePageState {
  const _$_HomePageState(
      {@required this.selectedIndex,
      @required this.isLoading,
      @required this.offers,
      @required this.currentUser})
      : assert(selectedIndex != null),
        assert(isLoading != null),
        assert(offers != null),
        assert(currentUser != null);

  @override
  final int selectedIndex;
  @override
  final bool isLoading;
  @override
  final List<Offer> offers;
  @override
  final User currentUser;

  @override
  String toString() {
    return 'HomePageState(selectedIndex: $selectedIndex, isLoading: $isLoading, offers: $offers, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomePageState &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.offers, offers) ||
                const DeepCollectionEquality().equals(other.offers, offers)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedIndex) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(offers) ^
      const DeepCollectionEquality().hash(currentUser);

  @override
  _$HomePageStateCopyWith<_HomePageState> get copyWith =>
      __$HomePageStateCopyWithImpl<_HomePageState>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {@required int selectedIndex,
      @required bool isLoading,
      @required List<Offer> offers,
      @required User currentUser}) = _$_HomePageState;

  @override
  int get selectedIndex;
  @override
  bool get isLoading;
  @override
  List<Offer> get offers;
  @override
  User get currentUser;
  @override
  _$HomePageStateCopyWith<_HomePageState> get copyWith;
}
