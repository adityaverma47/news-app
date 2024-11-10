// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'color_constant.dart';

void CustomSnackBar(String msg, String type) {
  Get.rawSnackbar(
    messageText: Text(msg),
    icon: type == "S"
        ? const Icon(
            Icons.check_circle_rounded,
            color: ColorConstant.success,
          )
        : type == "E"
            ? const Icon(
                Icons.error_outline_rounded,
                color: ColorConstant.error,
              )
            : const Icon(
                Icons.warning_amber_rounded,
                color: ColorConstant.orangeOne,
              ),
    backgroundColor: ColorConstant.bgGrey,
    duration: const Duration(milliseconds: 2000),
    margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
    snackPosition: SnackPosition.TOP,
    borderRadius: 5,
    animationDuration: const Duration(milliseconds: 1000),
    backgroundGradient: const LinearGradient(
      colors: [ColorConstant.bgGrey, ColorConstant.bgGrey],
    ),
  );
}
