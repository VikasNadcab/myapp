import 'package:get/get.dart';
import 'package:myapp/controllers/appController.dart';
import 'package:myapp/controllers/splashController.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Splashcontroller());
    Get.put(AppController());
  }
}
