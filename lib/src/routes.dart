import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_search_challenge/src/screens/detail_cv/detail_cv_binding.dart';
import 'package:job_search_challenge/src/screens/detail_cv/detail_cv_screen.dart';
import 'package:job_search_challenge/src/screens/detail_offer/detail_offer_binding.dart';
import 'package:job_search_challenge/src/screens/detail_offer/detail_offer_screen.dart';
import 'package:job_search_challenge/src/screens/home/home_binding.dart';
import 'package:job_search_challenge/src/screens/home/home_screen.dart';
import 'package:job_search_challenge/src/screens/splash/splash_binding.dart';
import 'package:job_search_challenge/src/screens/splash/splash_screen.dart';

class Routes {
  Routes._();

  static const String home = '/home';
  static const String splash = '/splash';
  static const String detailCV = '/detailCV';
  static const String detailOffer = '/detailOffer';

  static final routes = <String, WidgetBuilder>{
    // Splash
    splash: (BuildContext context) => const SplashScreen(),
    // Home
    home: (BuildContext context) => const HomeScreen(),
    // Detail cv
    detailCV: (BuildContext context) => DetailCVScreen(),
    // Detail offer
    detailOffer: (BuildContext context) => DetailOfferScreen(),
  };

  static final getRoutes = [
    // Splash
    GetPage(
        name: splash,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    // Home
    GetPage(name: home, page: () => const HomeScreen(), binding: HomeBinding()),
    // Detail cv
    GetPage(
      name: detailCV,
      page: () => DetailCVScreen(),
      binding: DetailCVBinding(),
    ),
    // Detail offer
    GetPage(
      name: detailOffer,
      page: () => DetailOfferScreen(),
      binding: DetailOfferBinding(),
    ),
  ];
}
