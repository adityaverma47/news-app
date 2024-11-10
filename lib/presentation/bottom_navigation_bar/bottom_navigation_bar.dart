import 'dart:io';
import 'package:daily_news/presentation/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import 'controller/navigaton_bar_controller.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationBarController>(
      builder: (controller) {
        return
              Scaffold(
                body: IndexedStack(
                  index: controller.argumentData ?? controller.tabIndex,
                  children: const [
                    HomePage(),
                    HomePage(),
                  ],
                ),
                bottomNavigationBar: BottomNavigationBar(
                  unselectedItemColor: ColorConstant.textTwo,
                  selectedItemColor: ColorConstant.secodaryP300,
                  unselectedFontSize: 10.sp,
                  selectedFontSize: 10.sp,
                  onTap: controller.changeTabIndex,
                  currentIndex:
                  controller.argumentData ?? controller.tabIndex,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white,
                  elevation: 25,
                  items: [
                    BottomNavigationBarItem(
                      icon: (controller.argumentData ??
                          controller.tabIndex) ==
                          0
                          ? SvgPicture.asset(ImageConstant.tvNews)
                          : SvgPicture.asset(ImageConstant.tvNews),
                      label: 'Home'
                    ),
                    BottomNavigationBarItem(
                      icon: (controller.argumentData ??
                          controller.tabIndex) ==
                          1
                          ? SvgPicture.asset(
                          ImageConstant.tvNews)
                          : SvgPicture.asset(ImageConstant.tvNews),
                      label: 'Booking'
                    ),
                    // BottomNavigationBarItem(
                    //   icon: (controller.argumentData ??
                    //       controller.tabIndex) ==
                    //       2
                    //       ? SvgPicture.asset(
                    //       ImageConstant.ambulanceFilled)
                    //       : SvgPicture.asset(
                    //       ImageConstant.ambulanceIconMarker),
                    //   label: controller.jsonData.isEmpty
                    //       ? 'Ambulance'
                    //       : controller.jsonData[6].textInSelectedLang
                    //       .toString(),
                    // ),
                    // BottomNavigationBarItem(
                    //   icon: (controller.argumentData ??
                    //       controller.tabIndex) ==
                    //       3
                    //       ? SvgPicture.asset(
                    //       ImageConstant.walletFilled)
                    //       : SvgPicture.asset(
                    //       ImageConstant.wallet),
                    //   label: controller.jsonData.isEmpty
                    //       ? 'Wallet'
                    //       : controller.jsonData[2].textInSelectedLang
                    //       .toString(),
                    // ),
                    // BottomNavigationBarItem(
                    //   icon: (controller.argumentData ??
                    //       controller.tabIndex) ==
                    //       4
                    //       ? SvgPicture.asset(
                    //       ImageConstant.tvNews)
                    //       : SvgPicture.asset(
                    //       ImageConstant.tvNews),
                    //   label: controller.jsonData.isEmpty
                    //       ? 'Account'
                    //       : controller.jsonData[8].textInSelectedLang
                    //       .toString(),
                    // ),
                  ],
                ),
              );
      },
    );
  }

// _bottomNavigationBarItem({IconData? icon, required String label}) {
//   return BottomNavigationBarItem(
//     icon: Icon(icon),
//     label: label,
//   );
// }
}
