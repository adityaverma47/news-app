import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CustomAppBar(
      {super.key,
         this.height,
        this.styleType,
        this.styleTypeTwo,
        this.leadingWidth,
        this.leading,
        this.isBackBtnVisible,
        this.title,
        this.centerTitle,
        this.onTap,
        this.actions,
        this.leadIcon, this.bgColor});

  final double? height;

  final Widget? leadIcon;

  final Style? styleType;

  final String? styleTypeTwo;

  final double? leadingWidth;

  final Color? bgColor;

  final Widget? leading;

  final bool? isBackBtnVisible;

  final Widget? title;

  final VoidCallback? onTap;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor ?? ColorConstant.grey,
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      leading: (isBackBtnVisible ?? true) == false
          ? null
          : Padding(
        padding: const EdgeInsets.only(left: 10),
        child: IconButton(
          onPressed: onTap,
          icon:leadIcon?? const Icon(Icons.location_on,color: Colors.green,)
        ),
      ),
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, height!);

  getStyle(){
    switch(styleType){
      case Style.bgGradientPink700Pink900:
        return  Container(
          height: 100,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                0,
              ),
              end: Alignment(
                0.5,
                1,
              ),
              colors: [
                ColorConstant.appBarColor1,
                ColorConstant.appBarColor2,
              ],
            ),
          ),
        );

      case Style.bgFillWhite:
        return Container(
          height: 40,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: ColorConstant.white,
          ),
        );

      case Style.bgFillGrey:
        return Container(
          height: 49,
          decoration: const BoxDecoration(
            color: ColorConstant.grey,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style{
  bgGradientPink700Pink900,
  bgFillWhite,
  bgFillGrey,
}

