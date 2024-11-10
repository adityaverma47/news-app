import 'package:flutter/material.dart';
import 'appbar_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'appbar_title.dart';
import 'custom_app_bar.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget  {
  final String? appBarTitile ;
  const AppBarView({Key? key, this.appBarTitile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      height: 60.h,
      leadingWidth: 25.w,
      leading: AppbarImage(
        height: 36.h,
        width: 25.w,
        // svgPath: ImageConstant.headerAdd,
        margin: EdgeInsets.only(bottom: 0, top: 20.h),
      ),
      title: Center(
        child: Container(
          height: 60.h,
          width: double.maxFinite,
          margin: EdgeInsets.only(left: 14.w),
          child: Stack(
            alignment: Alignment.center,
            children: [
              AppbarImage(
                height: 50.h,
                width: 188.w,
                // imagePath: ImageConstant.headerTwo,
              ),
              AppbarTitle(
                text: appBarTitile.toString() ,
                //controller.regStepOneText![0].textInSelectedLang.toString()
                // margin: getMargin(bottom: 0, top: 21.h),
              ),
            ],
          ),
        ),
      ),
      actions: [
        AppbarImage(
          height: 22.h,
          width: 29.w,
          // svgPath: ImageConstant.headerAdd,
          margin: EdgeInsets.only(bottom: 14.h),
        ),
      ],
      styleType: Style.bgGradientPink700Pink900,
    );
  }

  @override
  Size get preferredSize => Size(
    double.maxFinite,
      60.h,
  );
}
