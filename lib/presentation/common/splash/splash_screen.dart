import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstant.tvNews),
                  fit: BoxFit.fill,
                ),
              ),
              height: 200.h,
              width: 100.w,
              child: null),
        ),
      ),
    );
  }
}
