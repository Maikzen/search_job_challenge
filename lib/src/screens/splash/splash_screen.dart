import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_search_challenge/src/routes.dart';
import 'package:job_search_challenge/src/screens/splash/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => checkStatusVersion());
    return const Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }

  checkStatusVersion() async {
    StatusVersion? statusVersion = await controller.checkVersionApp();
    if(statusVersion == StatusVersion.latest){
      checkSession();
    } else {
      checkSession();
    }
  }

  checkSession() async {
    await Future.delayed(const Duration(seconds: 2));
    bool isLogged = await controller.validateSession();
    if (isLogged) {
      Get.offNamed(Routes.home);
    } else {
      Get.offNamed(Routes.home);
    }
  }
}
