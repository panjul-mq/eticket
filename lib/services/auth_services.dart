part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<SignInSingUpResult> signUp(String email, String password, String name, String numberPhone) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      User user = result.user.convertToUser(
        name: name,
        numberPhone: numberPhone
      );

      await UserServices.updateUser(user);

      return SignInSingUpResult(user: user);
    } catch (e){
      return SignInSingUpResult(massage: e.toString().split(',')[1]);
    }
  }

  static Future<SignInSingUpResult> signIn(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);

      User user = await result.user.fromFireStore();

      return SignInSingUpResult(user: user);
    } catch (e) {
      return SignInSingUpResult(massage: e.toString().split(',')[1]);
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static Stream<FirebaseUser> get userStream => _auth.onAuthStateChanged;

  static Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }
}

class SignInSingUpResult {
  final User user;
  final String massage;

  SignInSingUpResult({this.user,this.massage});
}