import 'package:get/instance_manager.dart';
import 'package:job_search_challenge/src/screens/detail_cv/detail_cv_controller.dart';

class DetailCVBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailCVController>(() => DetailCVController());
  }
}
