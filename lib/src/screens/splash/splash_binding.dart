import 'package:get/instance_manager.dart';
import 'package:job_search_challenge/src/screens/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(
        localDataInterface: Get.find(),
      ),
    );
  }
}
