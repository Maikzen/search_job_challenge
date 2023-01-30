import 'package:flutter/material.dart';
import 'package:job_search_challenge/main_binding.dart';
import 'package:job_search_challenge/src/providers/constants.dart';
import 'package:job_search_challenge/src/routes.dart';
import 'package:get/get.dart';

class AppConfig extends InheritedWidget {
  const AppConfig(
      {Key? key,
      required this.appDisplayName,
      required this.environment,
      required this.appInternalId,
      required this.stringResource,
      required Widget child})
      : super(key: key, child: child);

  final String appDisplayName;
  final String environment;
  final int appInternalId;
  final StringResource stringResource;

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}

abstract class StringResource {
  // Api URL
  String? apiUrl;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splash,
      initialBinding: MainBinding(),
      getPages: Routes.getRoutes,
    );
  }
}
