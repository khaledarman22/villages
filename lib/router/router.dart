import 'package:flutter/material.dart';
import 'package:villages/router/routing_model.dart';
import 'package:villages/views/village_hospital/village_hospital_page.dart';
import 'package:villages/views/welcoming/splash_screen.dart';
import 'package:villages/views/welcoming/welcome_screen.dart';

import '../views/educational_services/educational_services_view.dart';
import '../views/emergency/emergency_view.dart';
import '../views/emergency/emergency_view.dart';
import '../views/medical_services/medical_services_view.dart';
import '../views/selected_village_screen/selected_village_screen_view.dart';
import '../views/services_main_screen/services_main_screen_view.dart';
import '../views/social_services/social_services_view.dart';
import '../views/village_re/village_review.dart';
import '../views/village_workers/village_workers_view.dart';

class AppRouter {
  static final splashScreen = RoutingModel(
    name: '/splash',
    page: const SplashScreen(),
  );
  static final welcomeScreen = RoutingModel(
    name: '/welcome',
    page: const WelcomeScreen(),
  );
  static final villageReviewScreen = RoutingModel(
    name: '/villageReviewScreen',
    page: const VillageReviewScreen(),
  );
  static final servicesMainScreen = RoutingModel(
    name: '/servicesMainScreen',
    page: const ServicesMainScreen(),
  );
  static final selectedVillageScreen = RoutingModel(
    name: '/selectedVillageScreen',
    page: const SelectedVillageScreen(),
  );
  static final educationalServicesScreen = RoutingModel(
    name: '/educationalServicesScreen',
    page: const EducationalServicesScreen(),
  );
  static final medicalServicesScreen = RoutingModel(
    name: '/medicalServicesScreen',
    page: const MedicalServicesScreen(),
  );
  static final socialServicesScreen = RoutingModel(
    name: '/socialServicesScreen',
    page: const SocialServicesScreen(),
  );
  static final villageWorkersScreen = RoutingModel(
    name: '/villageWorkersScreen',
    page: const VillageWorkersScreen(),
  );
  static final villageHospitalPage = RoutingModel(
    name: '/villageHospitalPage',
    page: const VillageHospitalPage(),
  );
  static final emergencyPage = RoutingModel(
    name: '/emergencyPage',
    page: const EmergencyPage(),
  );

  static final Map<String, Widget Function(BuildContext)> routes = {}
    ..addAll(
      splashScreen.toRoute,
    )
    ..addAll(
      welcomeScreen.toRoute,
    )
    ..addAll(
      villageReviewScreen.toRoute,
    )
    ..addAll(
      servicesMainScreen.toRoute,
    )
    ..addAll(
      selectedVillageScreen.toRoute,
    )
    ..addAll(
      educationalServicesScreen.toRoute,
    )
    ..addAll(
      medicalServicesScreen.toRoute,
    )
    ..addAll(
      socialServicesScreen.toRoute,
    )
    ..addAll(
      villageWorkersScreen.toRoute,
    )
    ..addAll(
      emergencyPage.toRoute,
    )
    ..addAll(
      villageHospitalPage.toRoute,
    );
}
