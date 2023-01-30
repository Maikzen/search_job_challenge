import 'package:job_search_challenge/src/contracts/compatibility_interface.dart';
import 'package:job_search_challenge/src/models/DTO/version_app_res.dart';

class CompatibilityService implements CompatibilityInterface{
  @override
  Future<VersionApp> currentVersion(String platform) {
    return Future.value(VersionApp.defaultVersion());
  }

}