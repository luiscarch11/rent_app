abstract class LoginRepository {
  Future<bool> signIn(
    String email,
    String password,
  );
}
