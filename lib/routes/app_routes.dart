import 'package:daily_news/presentation/bottom_navigation_bar/binding/navigation_bar_binding.dart';
import 'package:daily_news/presentation/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:daily_news/presentation/common/intro_screen/binding/intro_binding.dart';
import 'package:daily_news/presentation/common/intro_screen/intro_screen.dart';
import 'package:daily_news/presentation/common/splash/binding/bindings.dart';
import 'package:daily_news/presentation/common/splash/splash_screen.dart';
import 'package:daily_news/presentation/login/login_screen.dart';
import 'package:daily_news/presentation/profile/bindings.dart';
import 'package:daily_news/presentation/profile/profile_screen.dart';
import 'package:get/get.dart';
import '../presentation/login/binding/bindings.dart';

class AppRoutes{

  static  String initialRoute = '/initial_route';
  static const String introScreen = '/intro_screen';
  static const String loginScreen = '/login_screen';
  static const String profileScreen = '/profile_screen';
  static const String bottomBar = '/bottom_navigation_bar_screen';
  static const String homepage = '/homepage_screen';

  static List<GetPage> pages = [

    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(), // loginScreen
      bindings: [
        SplashBinding(),
      ]),

    GetPage(
        name: introScreen,
        page: () => const IntroScreen(),
     bindings: [
       IntroBinding()
     ]),

    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(), // loginScreen
      bindings: [
        LoginBinding(),
      ]),

    GetPage(
      name: bottomBar,
      page: () => const BottomNavigationBarScreen(), // loginScreen
      bindings: [
        BottomNavigationBarBinding(),
      ]),
  ];
}