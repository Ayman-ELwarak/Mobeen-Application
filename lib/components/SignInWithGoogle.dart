import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobile_app/components/Backend.dart';
import 'package:mobile_app/screens/SigninPage.dart';

Future<dynamic> signInWithGoogle() async {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  try {
    await _googleSignIn.signOut();
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      print("User canceled sign-in");
      return 'no_user';
    }

    String? email = googleUser.email;
    String? name = googleUser.displayName;

    print(googleUser);

    Map<String, dynamic> data = {"email": email, "name": name};
    dynamic message = await postData(
        '$link/api/v1/users/auth',
        data);
    return message;
  } catch (e) {
    print("Google Sign-In Error: $e");
    return 'failed';
  }
}
