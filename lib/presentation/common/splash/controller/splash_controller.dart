import 'package:get/get.dart';
import '../../intro_screen/controller/intro_controller.dart';
import '../../intro_screen/intro_screen.dart';

class SplashController extends GetxController{
  var isAllPermission = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () async {
      Get.lazyPut(() => IntroController());
      Get.to(() => const IntroScreen());
    });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> permissionChecker() async {
    // if (Platform.isAndroid) {
    //
    //   if (await Permission.notification.isGranted) {
    //     isAllPermission.value = true;
    //   } else {
    //     isAllPermission.value = false;
    //     return;
    //   }
    //   if (await Permission.phone.isGranted ||
    //       await Permission.phone.serviceStatus.isNotApplicable) {
    //     isAllPermission.value = true;
    //   } else {
    //     isAllPermission.value = false;
    //     return;
    //   }
    // }
    //
    // if (Platform.isIOS) {
    //   isAllPermission.value = true;
    // }
  }
}