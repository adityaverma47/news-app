import 'package:daily_news/presentation/common/intro_screen/controller/intro_controller.dart';
import 'package:get/get.dart';

class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut( () => IntroController());
  }

}