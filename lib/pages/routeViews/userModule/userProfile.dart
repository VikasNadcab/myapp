import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/assetImage.dart';
import 'package:myapp/utils/colorPallet.dart';
import 'package:tabler_icons/tabler_icons.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Column(
        children: [
          Container(
            width: Get.width,
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: ColorPallet.gradientColor
                    .map((color) => color.withOpacity(0.2))
                    .toList(),
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,

                    backgroundImage: CachedNetworkImageProvider(
                      FirebaseAuth.instance.currentUser?.photoURL ??
                          'https://example.com/default_profile_picture.png',
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    FirebaseAuth.instance.currentUser?.displayName ??
                        'User Name',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    FirebaseAuth.instance.currentUser?.email ?? 'User Name',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: _noCreations()),
        ],
      ),
    );
  }

  Widget _noCreations() => Container(
    width: Get.width,
    child: Column(
      children: [
        Image.asset(
          AppImages.imageCreation,
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
        Text(
          "No Creations Yet",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          "Create your first one now!",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    ),
  );
}
