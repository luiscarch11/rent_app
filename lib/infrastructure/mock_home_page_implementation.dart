import 'package:rent_design/domain/home_page_repository.dart';
import 'package:rent_design/domain/offer.dart';
import 'package:rent_design/domain/user.dart';

class MockHomePageImplementation implements HomePageRepository {
  @override
  Future<List<Offer>> find() async {
    await Future.delayed(
      const Duration(
        seconds: 1,
      ),
    );

    return [
      Offer(
        bathrooms: 3,
        livings: 1,
        rooms: 2,
        title: 'Special House Mix',
        photosUrls: [
          'https://www.ikea.com/images/a-white-kitchen-with-white-drawers-and-cabinets-with-glass-d-44ee69846ee7b4c479e3b7846fa56216.jpg',
        ],
        location: 'San Francisco, CA',
        price: 1500,
        rate: 5,
        owner: User(
          name: 'Timmy',
          surname: 'Bremmer',
          photoUrl:
              'https://media.wtsp.com/assets/WTSP/images/545992856/545992856_360x203.jpg',
        ),
      ),
      Offer(
        bathrooms: 1,
        livings: 1,
        rooms: 3,
        title: 'Special House Mix',
        photosUrls: [
          'https://www.ikea.com/images/a-white-kitchen-with-white-drawers-and-cabinets-with-glass-d-44ee69846ee7b4c479e3b7846fa56216.jpg',
        ],
        location: 'San Francisco, CA',
        price: 1240,
        rate: 2,
        owner: User(
          name: 'Timmy',
          surname: 'Bremmer',
          photoUrl:
              'https://media.wtsp.com/assets/WTSP/images/545992856/545992856_360x203.jpg',
        ),
      ),
    ];
  }

  @override
  Future<User> findUser() async {
    return User(
      location: 'Los Angeles, CA',
      name: 'Eddiel',
      surname: 'Jones',
      photoUrl:
          'https://media.wtsp.com/assets/WTSP/images/545992856/545992856_360x203.jpg',
    );
  }
}
