import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_search_challenge/src/screens/detail_cv/detail_cv_screen.dart';

class DetailCVController extends GetxController
    with GetTickerProviderStateMixin {
  DetailCVController();
  late AnimationController animationController;
  PageController pageController = PageController();
  List<AnimationController> listAnimations = [];
  RxBool animationLoaded = false.obs;
  List<Offer> listOffers = [
    Offer(
        id: 1,
        company: "Apple",
        image: "assets/img/apple.png",
        title: "Product Designer",
        salary: "120k"),
    Offer(
        id: 2,
        company: "Google",
        image: "assets/img/google.png",
        title: "Product Designer",
        salary: "100k"),
    Offer(
        id: 3,
        company: "Microsoft",
        image: "assets/img/microsoft.png",
        title: "Product Designer",
        salary: "110k"),
    Offer(
        id: 4,
        company: "Apple",
        image: "assets/img/apple.png",
        title: "Product Designer",
        salary: "120k"),
    Offer(
        id: 5,
        company: "Google",
        image: "assets/img/google.png",
        title: "Product Designer",
        salary: "100k"),
    Offer(
        id: 6,
        company: "Microsoft",
        image: "assets/img/microsoft.png",
        title: "Product Designer",
        salary: "110k"),
  ];

  @override
  void onInit() async {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animationController.forward();
    for (int i = 0; i < listOffers.length; i++) {
      listAnimations.add(AnimationController(
          vsync: this, duration: const Duration(milliseconds: 200)));
    }
    animationLoaded.value = true;
    for (int i = 0; i < listOffers.length; i++) {
      await Future.delayed(const Duration(milliseconds: 100));
      listAnimations[i].forward();
    }
    super.onInit();
  }
}
