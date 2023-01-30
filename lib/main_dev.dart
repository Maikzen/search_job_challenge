import 'package:flutter/material.dart';
import 'package:job_search_challenge/app_config.dart';
import 'package:job_search_challenge/src/resources/strings_dev.dart';

void main() {

  var configuredApp = AppConfig(
    appDisplayName: "Template DEV",
    appInternalId: 2,
    environment: "DEV",
    stringResource: StringsDev(),
    child: const MyApp(),
  );

  
  runApp(configuredApp);
}