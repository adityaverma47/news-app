import 'package:daily_news/presentation/bottom_navigation_bar/controller/navigaton_bar_controller.dart';
import 'package:get/get.dart';

class BottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationBarController());
  }

}