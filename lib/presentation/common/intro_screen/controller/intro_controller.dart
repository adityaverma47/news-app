import 'package:daily_news/presentation/homepage/homepage.dart';
import 'package:get/get.dart';

import '../../../login/login_screen.dart';

class IntroController extends GetxController{

  void onDone() {
    Get.off(() => const HomePage());
  }

  void onSkip() {
    Get.off(() => const HomePage());
  }
}