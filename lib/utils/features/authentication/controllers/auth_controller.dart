import 'package:eventmainapp/utils/features/authentication/controllers/auth_service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuthService _authService = FirebaseAuthService();

  Future<void> SignUp({required String email, required String password}) async {
    await _authService.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signIn({required String email, required String password}) async {
    await _authService.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }
}
