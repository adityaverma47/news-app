// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import 'custom_image_view.dart';

// ignore: must_be_immutable
class CustomButtonBottom extends StatelessWidget {
  CustomButtonBottom({
    this.loading,
    this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.margin,
    this.onTap,
    this.width,
    this.height,
    this.text,
    this.prefixWidget,
    this.suffixWidget,
    this.rowWidget,
    //this.color
  });

  bool? loading;
  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;
  Widget? rowWidget;
  //Color? color;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment!,
      child: _buildButtonWidget(),
    )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: (loading ?? false) ? () {} : onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? const SizedBox(),
          loading ?? false
              ? const Center(
            child: CircularProgressIndicator(),
          )
              : Text(
            text ?? "",
            textAlign: TextAlign.center,
            //_setFontStyle(),
          ), //
          suffixWidget ?? const SizedBox(),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 10,
            child: Center(
              child: loading ?? false
                  ? SizedBox(
                height: 22.w,
                width: 22.w,
                child: const CircularProgressIndicator(
                  color: ColorConstant.white,
                ),
              )
                  : Text(
                text ?? "",
                style: _setFontStyle(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          //suffixWidget ?? SizedBox(),
          Visibility(
            visible: !(loading ?? false),
            child: Expanded(
              flex: 1,
              child: Center(
                child: CustomImageView(
                  svgPath: ImageConstant.tvNews,
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? 40.h,
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      // side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll10:
        return EdgeInsets.all(
          10.h,
        );
      case ButtonPadding.PaddingT7:
        return EdgeInsets.only(
          right: 7.w,
          bottom: 7.h,
        );
      default:
        return EdgeInsets.only(
          left: 12.w,
          right: 12.w,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.white;
      case ButtonVariant.OutlneColorHeading:
        return ColorConstant.grey;
      case ButtonVariant.FillActive:
        return ColorConstant.cta;
      case ButtonVariant.FillUnctive:
        return ColorConstant.ctaUnactive;
      default:
        return ColorConstant.ctaUnactive;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.White:
        return BorderSide(
          color: ColorConstant.secondaryColor,
          width: 1.00.w,
        );
      case ButtonVariant.OutlinePink700:
        return BorderSide(
          color: ColorConstant.cta,
          width: 1.00.w,
        );
      case ButtonVariant.OutlneColorHeading:
        return BorderSide(
          color: ColorConstant.colorHeading,
          width: 1.00.w,
        );
      case ButtonVariant.FillGray80001:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillGray400:
      case ButtonVariant.FillActive:
      case ButtonVariant.FillUnctive:
        return null;
      default:
        return BorderSide(
          color: ColorConstant.ctaUnactive,
          width: 1.00.w,
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          16.00.w,
        );
      case ButtonShape.RoundedBorder3:
        return BorderRadius.circular(
          3.00.w,
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          6.00.w,
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.MontserratRegular13:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 13.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.23.h,
        );
      case ButtonFontStyle.MontserratMedium14:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 14.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          height: 1.29.h,
        );
      case ButtonFontStyle.MontserratSemiBold12:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      case ButtonFontStyle.MontserratSemiBold10:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 10.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.20.h,
        );
      case ButtonFontStyle.MontserratRegular10:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 10.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.30.h,
        );
      case ButtonFontStyle.MontserratSemiBold12WhiteA700:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      default:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder6,
  RoundedBorder16,
  RoundedBorder3,
}

enum ButtonPadding {
  PaddingT12,
  PaddingAll10,
  PaddingT7,
}

enum ButtonVariant {
  red,
  White,
  FillGray80001,
  OutlinePink700,
  FillWhiteA700,
  OutlineGray30001_1,
  FillGray400,
  FillActive,
  FillUnctive,
  OutlneColorHeading
}

enum ButtonFontStyle {
  MontserratRegular12,
  MontserratRegular13,
  MontserratMedium14,
  MontserratSemiBold12,
  MontserratSemiBold10,
  MontserratRegular10,
  MontserratSemiBold12WhiteA700,
}
