import 'package:rent_design/domain/login_repository.dart';

class MockLoginRepositoryImplementation implements LoginRepository {
  @override
  Future<bool> signIn(String email, String password) async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    if (email.trim().toLowerCase() == 'luis.carch1998@gmail.com' &&
        password.trim() == '12345') return true;
    return false;
  }
}
