import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/utils/routes.dart';

class Splashcontroller extends GetxController {
  splashload() {
    2.delay(() {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        Get.offAllNamed(AppRoutes.authentication);
      } else {
        print('User is signed in!');
        Get.offAllNamed(AppRoutes.home);
      }
    // Get.offAllNamed(AppRoutes.authentication);
    // Get.offAllNamed(AppRoutes.notificationPermission);
      });
    });
  }

  signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        // User cancelled the sign-in
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

     final user =  await FirebaseAuth.instance.signInWithCredential(credential);
      // Navigate to the next screen or handle successful sign-in
    print(user.user);
    } catch (e) {
      print(e); // Handle errors
    }
  }
}
