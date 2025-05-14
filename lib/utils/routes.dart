import 'package:get/get.dart';
import 'package:myapp/pages/authentication/authenticationView.dart';
import 'package:myapp/pages/permission/notificationService.dart';
import 'package:myapp/pages/routeViews/createModule/creatHomePage.dart';
import 'package:myapp/pages/routeViews/routeScreen.dart';
import 'package:myapp/pages/splashScreen.dart';

class AppRoutes {
  static String splash = "/";
  static String authentication = "/authentication";
  static String permission = "/permission";
  static String notificationPermission = "/notificationPermission";
  static String home = "/home";
  static String addCreation = "/add-creation";
  static List<GetPage> routes = [
    GetPage(name: AppRoutes.splash, page: () => SplasScreen()),
    GetPage(name: AppRoutes.authentication, page: () => Authentication()),
    GetPage(name: AppRoutes.home, page: () => RouteScreen(),children: [
      GetPage(name: AppRoutes.addCreation, page: () => CreathomepageScreen()),
    ]),
    GetPage(name: AppRoutes.notificationPermission, page: () => NotificationPermissionView()),
  ];
}
