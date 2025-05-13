import 'package:get/get.dart';
import 'package:myapp/pages/authentication/authenticationView.dart';
import 'package:myapp/pages/splashScreen.dart';

class AppRoutes {
  static String splash = "/";
  static String authentication = "/authentication";
  static List<GetPage> routes = [
    GetPage(name: AppRoutes.splash, page: () => SplasScreen()),
    GetPage(name: AppRoutes.authentication, page: () => Authentication()),
  ];
}
