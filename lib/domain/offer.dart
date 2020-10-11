import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rent_design/domain/user.dart';
part 'offer.freezed.dart';

@freezed
abstract class Offer with _$Offer {
  const Offer._();

  const factory Offer({
    String title,
    String location,
    User owner,
    int rate,
    double price,
    int bathrooms,
    int rooms,
    int livings,
    List<String> photosUrls,
  }) = _Offer;
}
