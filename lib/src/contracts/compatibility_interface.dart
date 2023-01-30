import 'package:job_search_challenge/src/models/DTO/version_app_res.dart';

abstract class CompatibilityInterface {
  Future<VersionApp> currentVersion(String platform);
}