import 'package:get/get.dart';
import 'package:job_search_challenge/src/contracts/local_data_interface.dart';

enum StatusVersion { latest, updateAvailable, expired }

class SplashController extends GetxController {
  LocalDataInterface localDataInterface;

  SplashController({
    required this.localDataInterface,
  });

  Future<bool> validateSession() async {
    String? token = await localDataInterface.getToken();
    return token != null;
  }

  Future<StatusVersion?> checkVersionApp() async {
    return null;
  }
}
