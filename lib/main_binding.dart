import 'package:job_search_challenge/src/contracts/compatibility_interface.dart';
import 'package:job_search_challenge/src/contracts/local_data_interface.dart';
import 'package:job_search_challenge/src/services/compatibility_service.dart';
import 'package:job_search_challenge/src/services/preferences_service.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LocalDataInterface>(PreferencesService());
    Get.put<CompatibilityInterface>(CompatibilityService());
  }
}
