
import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController {
  dynamic argumentData = Get.arguments;
  var tabIndex = 0;


  void changeTabIndex(int index) {
    argumentData = null;
    tabIndex = index;
    update();
  }
}