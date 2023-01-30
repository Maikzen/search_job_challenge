import 'package:get/instance_manager.dart';
import 'package:job_search_challenge/src/screens/detail_offer/detail_offer_controller.dart';

class DetailOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailOfferController>(() => DetailOfferController());
  }
}
