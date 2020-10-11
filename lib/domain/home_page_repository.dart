import 'package:rent_design/domain/user.dart';

import 'offer.dart';

abstract class HomePageRepository {
  Future<List<Offer>> find();
  Future<User> findUser();
}
