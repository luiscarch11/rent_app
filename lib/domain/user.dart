import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const User._();
  const factory User({
    String name,
    String surname,
    String location,
    String photoUrl,
  }) = _User;
}
