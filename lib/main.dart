import 'package:flutter/material.dart';
import 'package:myapp/bindings/appbindings.dart';
import 'package:myapp/pages/splashScreen.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      title: 'Flutter Demo',
      initialRoute: AppRoutes.splash,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      getPages: AppRoutes.routes,
    );
  }
}
