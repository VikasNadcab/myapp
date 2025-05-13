import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/controllers/splashController.dart';
import 'package:myapp/utils/appConfig.dart';
import 'package:myapp/utils/colorPallet.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 3.delay(() {
    //   Get.find<Splashcontroller>().splashload();
    // });
    Future.delayed(2.seconds, () {
      Get.find<Splashcontroller>().splashload();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GradientText(
          Appconfig.AppName,
          style: TextStyle().merge(GoogleFonts.lobster(fontSize: 30)),
          colors: ColorPallet.gradientColor,
        ),
      ),
    );
  }
}
