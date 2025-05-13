import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/splashController.dart';
import 'package:myapp/utils/assetImage.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AppImages().infoAuthBackground,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Get.theme.canvasColor.withOpacity(0),
                Get.theme.canvasColor.withOpacity(0),
                Get.theme.canvasColor.withOpacity(0.3),
                Get.theme.canvasColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SignInButton(
                  buttonType: ButtonType.google,
                  onPressed: Get.find<Splashcontroller>().signInWithGoogle,
                ),
                SignInButton(
                  buttonType: ButtonType.discord,
                  onPressed: () {
                    print('click');
                  },
                ),
                SignInButton(
                  buttonType: ButtonType.linkedin,
                  onPressed: () {
                    print('click');
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
