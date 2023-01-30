import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_search_challenge/src/screens/detail_cv/detail_cv_screen.dart';

class DetailOfferController extends GetxController
    with GetSingleTickerProviderStateMixin {
  DetailOfferController();
  late AnimationController animationController;

  late Offer offer;

  @override
  void onInit() async {
    offer = Get.arguments;
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animationController.forward();
    super.onInit();
  }
}
