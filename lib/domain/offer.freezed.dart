// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OfferTearOff {
  const _$OfferTearOff();

// ignore: unused_element
  _Offer call(
      {String title,
      String location,
      User owner,
      int rate,
      double price,
      int bathrooms,
      int rooms,
      int livings,
      List<String> photosUrls}) {
    return _Offer(
      title: title,
      location: location,
      owner: owner,
      rate: rate,
      price: price,
      bathrooms: bathrooms,
      rooms: rooms,
      livings: livings,
      photosUrls: photosUrls,
    );
  }
}

// ignore: unused_element
const $Offer = _$OfferTearOff();

mixin _$Offer {
  String get title;
  String get location;
  User get owner;
  int get rate;
  double get price;
  int get bathrooms;
  int get rooms;
  int get livings;
  List<String> get photosUrls;

  $OfferCopyWith<Offer> get copyWith;
}

abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String location,
      User owner,
      int rate,
      double price,
      int bathrooms,
      int rooms,
      int livings,
      List<String> photosUrls});
}

class _$OfferCopyWithImpl<$Res> implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  final Offer _value;
  // ignore: unused_field
  final $Res Function(Offer) _then;

  @override
  $Res call({
    Object title = freezed,
    Object location = freezed,
    Object owner = freezed,
    Object rate = freezed,
    Object price = freezed,
    Object bathrooms = freezed,
    Object rooms = freezed,
    Object livings = freezed,
    Object photosUrls = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      location: location == freezed ? _value.location : location as String,
      owner: owner == freezed ? _value.owner : owner as User,
      rate: rate == freezed ? _value.rate : rate as int,
      price: price == freezed ? _value.price : price as double,
      bathrooms: bathrooms == freezed ? _value.bathrooms : bathrooms as int,
      rooms: rooms == freezed ? _value.rooms : rooms as int,
      livings: livings == freezed ? _value.livings : livings as int,
      photosUrls: photosUrls == freezed
          ? _value.photosUrls
          : photosUrls as List<String>,
    ));
  }
}

abstract class _$OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$OfferCopyWith(_Offer value, $Res Function(_Offer) then) =
      __$OfferCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String location,
      User owner,
      int rate,
      double price,
      int bathrooms,
      int rooms,
      int livings,
      List<String> photosUrls});
}

class __$OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res>
    implements _$OfferCopyWith<$Res> {
  __$OfferCopyWithImpl(_Offer _value, $Res Function(_Offer) _then)
      : super(_value, (v) => _then(v as _Offer));

  @override
  _Offer get _value => super._value as _Offer;

  @override
  $Res call({
    Object title = freezed,
    Object location = freezed,
    Object owner = freezed,
    Object rate = freezed,
    Object price = freezed,
    Object bathrooms = freezed,
    Object rooms = freezed,
    Object livings = freezed,
    Object photosUrls = freezed,
  }) {
    return _then(_Offer(
      title: title == freezed ? _value.title : title as String,
      location: location == freezed ? _value.location : location as String,
      owner: owner == freezed ? _value.owner : owner as User,
      rate: rate == freezed ? _value.rate : rate as int,
      price: price == freezed ? _value.price : price as double,
      bathrooms: bathrooms == freezed ? _value.bathrooms : bathrooms as int,
      rooms: rooms == freezed ? _value.rooms : rooms as int,
      livings: livings == freezed ? _value.livings : livings as int,
      photosUrls: photosUrls == freezed
          ? _value.photosUrls
          : photosUrls as List<String>,
    ));
  }
}

class _$_Offer extends _Offer {
  const _$_Offer(
      {this.title,
      this.location,
      this.owner,
      this.rate,
      this.price,
      this.bathrooms,
      this.rooms,
      this.livings,
      this.photosUrls})
      : super._();

  @override
  final String title;
  @override
  final String location;
  @override
  final User owner;
  @override
  final int rate;
  @override
  final double price;
  @override
  final int bathrooms;
  @override
  final int rooms;
  @override
  final int livings;
  @override
  final List<String> photosUrls;

  @override
  String toString() {
    return 'Offer(title: $title, location: $location, owner: $owner, rate: $rate, price: $price, bathrooms: $bathrooms, rooms: $rooms, livings: $livings, photosUrls: $photosUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Offer &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.bathrooms, bathrooms) ||
                const DeepCollectionEquality()
                    .equals(other.bathrooms, bathrooms)) &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)) &&
            (identical(other.livings, livings) ||
                const DeepCollectionEquality()
                    .equals(other.livings, livings)) &&
            (identical(other.photosUrls, photosUrls) ||
                const DeepCollectionEquality()
                    .equals(other.photosUrls, photosUrls)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(bathrooms) ^
      const DeepCollectionEquality().hash(rooms) ^
      const DeepCollectionEquality().hash(livings) ^
      const DeepCollectionEquality().hash(photosUrls);

  @override
  _$OfferCopyWith<_Offer> get copyWith =>
      __$OfferCopyWithImpl<_Offer>(this, _$identity);
}

abstract class _Offer extends Offer {
  const _Offer._() : super._();
  const factory _Offer(
      {String title,
      String location,
      User owner,
      int rate,
      double price,
      int bathrooms,
      int rooms,
      int livings,
      List<String> photosUrls}) = _$_Offer;

  @override
  String get title;
  @override
  String get location;
  @override
  User get owner;
  @override
  int get rate;
  @override
  double get price;
  @override
  int get bathrooms;
  @override
  int get rooms;
  @override
  int get livings;
  @override
  List<String> get photosUrls;
  @override
  _$OfferCopyWith<_Offer> get copyWith;
}
