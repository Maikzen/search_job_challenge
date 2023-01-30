import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_search_challenge/src/contracts/local_data_interface.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  LocalDataInterface preferencesService;

  HomeController({required this.preferencesService});

  final ScrollController scrollController = ScrollController();

  Rx<double> offset = Rx<double>(0);
  late AnimationController animationController;

  @override
  void onInit() async {
    scrollController.addListener(() {
      offset.value = scrollController.offset;
    });
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    super.onInit();
  }

  Future<bool> logout() {
    return preferencesService.clearAllData();
  }
}
