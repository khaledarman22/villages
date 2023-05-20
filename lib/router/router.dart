import 'package:flutter/material.dart';
import 'package:villages/router/routing_model.dart';
import 'package:villages/views/edit_password/edit_password.dart';
import 'package:villages/views/edit_phone_num/edit_phone_num.dart';
import 'package:villages/views/edit_profile/edit_profile.dart';
import 'package:villages/views/login_view/login_view.dart';
import 'package:villages/views/reset_password/add_new_password.dart';
import 'package:villages/views/reset_password/reset_password_view.dart';
import 'package:villages/views/reset_password/verfiy_view.dart';
import 'package:villages/views/sign_up_view/sign_up_view.dart';
import 'package:villages/views/village_hospital/village_hospital_page.dart';
import 'package:villages/views/welcoming/splash_screen.dart';
import 'package:villages/views/welcoming/welcome_screen.dart';

import '../views/app_helping/app_helping_view.dart';
import '../views/connect_with_us/connect_with_us_view.dart';
import '../views/educational_services/educational_services_view.dart';
import '../views/emergency/emergency_view.dart';
import '../views/know_more_au/know_more_au_view.dart';
import '../views/medical_services/medical_services_view.dart';
import '../views/notification/notification_view.dart';
import '../views/selected_village_screen/selected_village_screen_view.dart';
import '../views/services_main_screen/services_main_screen_view.dart';
import '../views/social_services/social_services_view.dart';
import '../views/spcial_doctors/spcial_doctors_view.dart';
import '../views/sport_club/sport_club_view.dart';
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
  static final loginView = RoutingModel(
    name: '/login',
    page: const LoginView(),
  );
  static final signUpView = RoutingModel(
    name: '/signUpView',
    page: const SignUpView(),
  );
  static final resetPasswordView = RoutingModel(
    name: '/resetPasswordView',
    page: const ResetPasswordView(),
  );
  static final addNewPassword = RoutingModel(
    name: '/addNewPassword',
    page: const AddNewPassword(),
  );
  static final verifyView = RoutingModel(
    name: '/verifyView',
    page: const VerifyView(),
  );
  static final editPhoneNum = RoutingModel(
    name: '/editPhoneNum',
    page: const EditPhoneNum(),
  );
  static final editPasswordView = RoutingModel(
    name: '/editPasswordView',
    page: const EditPasswordView(),
  );
  static final editProfileView = RoutingModel(
    name: '/editProfileView',
    page: const EditProfileView(),
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
  static final spcialDoctorsPage = RoutingModel(
    name: '/spcialDoctorsPage',
    page: const SpcialDoctorsPage(),
  );
  static final appHelpingPage = RoutingModel(
    name: '/appHelpingPage',
    page: const AppHelpingPage(),
  );
  static final knowMoreAUPage = RoutingModel(
    name: '/knowMoreAUPage',
    page: const KnowMoreAUPage(),
  );
  static final connectWithUsPage = RoutingModel(
    name: '/connectWithUsPage',
    page: const ConnectWithUsPage(),
  );
  static final notificationPage = RoutingModel(
    name: '/notificationPage',
    page: const NotificationPage(),
  );
  static final sportClubPage = RoutingModel(
    name: '/sportClubPage',
    page: const SportClubPage(),
  );

  static final Map<String, Widget Function(BuildContext)> routes = {}
    ..addAll(
      splashScreen.toRoute,
    )
    ..addAll(
      welcomeScreen.toRoute,
    )
    ..addAll(
      signUpView.toRoute,
    )
    ..addAll(
      loginView.toRoute,
    )
    ..addAll(
      editPhoneNum.toRoute,
    )
    ..addAll(
      editProfileView.toRoute,
    )
    ..addAll(
      resetPasswordView.toRoute,
    )
    ..addAll(
      editPasswordView.toRoute,
    )
    ..addAll(
      addNewPassword.toRoute,
    )
    ..addAll(
      verifyView.toRoute,
    )
    ..addAll(
      sportClubPage.toRoute,
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
      notificationPage.toRoute,
    )
    ..addAll(
      spcialDoctorsPage.toRoute,
    )
    ..addAll(
      villageHospitalPage.toRoute,
    )
    ..addAll(
      appHelpingPage.toRoute,
    )
    ..addAll(
      knowMoreAUPage.toRoute,
    )
    ..addAll(
      connectWithUsPage.toRoute,
    );
}
