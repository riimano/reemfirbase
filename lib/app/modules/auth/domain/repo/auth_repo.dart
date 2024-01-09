import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepo {
  AuthRepo(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;

  User? get currentUser => _firebaseAuth.currentUser;
  Stream<User?> get authStateChanged => _firebaseAuth.authStateChanges();

  Future<User?> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSignIn().signIn();

      if (googleSignInAccount == null) return null;
      final googleAuth = await googleSignInAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);
          await saveUserInfoToFirebase(userCredential.user?.uid,
          userCredential.user?.displayName.toString(),
          userCredential.user?.email.toString(),
          userCredential.user?.photoURL.toString(),);
          return userCredential.user;

          if (userCredential!=null )
    } catch (e) {}
  }
}
