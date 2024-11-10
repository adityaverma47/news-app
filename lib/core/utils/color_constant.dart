import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static const cta = Color(0xFFC5354F);
  static const cta2 = Color(0xFFF89E9E);
  static const cta3 = Color(0xFFF9E4E4);
  static const ctaUnactive = Color(0xFFD8B6BC);
  static const textLightRed = Color(0xFFE5DDDD);
  static const secondaryColor = Color(0xFF159D89);
  static const secondaryLight = Color(0xFFD3E8E4);
  static const inputField = Color(0xFFF2F2F2);
  static const outlineStroke = Color(0xFFE2E2E2);
  static const white = Color(0xFFFFFFFF);
  static const colorHeading = Color(0xFF494949);
  static const textOne = Color(0xFF41404D);
  static const textTwo = Color(0xFF7E7E7E);
  static const orangeOne = Color(0xFFD8712A);
  static const orangeTwo = Color(0xFFF9E5D7);
  static const success = Color(0xFF42A646);
  static const lightSuccess = Color(0xFFE3EAE3);
  static const error = Color(0xFFE42222);
  static const errorLight = Color(0xFFFFB8B8);
  static const bgOne = Color(0xFFF5F5FA);
  static const fill = Color(0xFF535E6F);
  static const transparent = Color(0xFF292929);
  static const grey = Color(0xFF252525);
  static const black = Color(0xFF000000);
  static const bgGrey = Color(0xFF40444F);
  static const deepOrange = Color(0xFFF9E5D7);
  static const divider = Color(0xFFD9D9D9);
  static const lime = Color(0xFFE0DB5D);
  static const errorTwo = Color(0xFFFFD0D0);
    static const hintColor = Color(0xFFB0B0B0);

  static const LightSuccess = Color(0xFFE3EAE3);
  static const textblack = Color(0xFF40444F); //t&c40444F
  static const OutlineStroke = Color(0xFFE2E2E2);
  static const divedercolor = Color(0xFFD9D9D9);
  static const textfour = Color(0xFF40444F);
  static const blue = Color(0xFF0075FF);
  static const lightBlue = Color(0xFFE5F1FF);
  static const appBarColor1 = Color(0xFFC5354F);
  static const appBarColor2 = Color(0xFF721F2E);

  static Color walletColor3 = fromHex('#2D1015');
  static Color walletColor2 = fromHex('#3B2B6A');
  static Color walletColor1 = fromHex('#A12037');
  static Color sky = fromHex('#00D2B3');
  static Color gradientRed = fromHex('#FF90A4');
  static Color gradientLightRed = fromHex('#FEE5EA');
  static const goldColor = Color(0xFFDAB352);
  static const backCardColor = Color(0xFFDAB452);

  static const darkGoldColor = Color(0xFFFFC700);
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  ///created by manisha
  static const darkBlueColor = Color(0xFF071733);

// !------------------------------------------New ColorS-------------------------------
  static const Color primary50 = Color(0xFFF9EBED);
  static const Color primary75 = Color(0xFFe7acb6);
  static const Color primary100 = Color(0xFFdd8a98);
  static const Color primary200 = Color(0xFFcf576c);
  static const Color primary300 = Color(0xFFc5354e);
  static const Color primary400 = Color(0xFF8a2537);
  static const Color primary500 = Color(0xFF782030);

  static const Color secondary50 = Color(0xFFe8f5f3);
  static const Color secondary75 = Color(0xFF9fd7ce);
  static const Color secondary100 = Color(0xFF78c6ba);
  static const Color secondary200 = Color(0xFF3eae9c);
  static const Color secondary300 = Color(0xFF169d88);
  static const Color secondary400 = Color(0xFF0f6e5f);
  static const Color secondary500 = Color(0xFF0d6053);

  static const Color success50 = Color(0xFFe8f9e8);
  static const Color success75 = Color(0xFF9fe69f);
  static const Color success100 = Color(0xFF78dc78);
  static const Color success200 = Color(0xFF3ecc3e);
  static const Color success300 = Color(0xFF16c216);
  static const Color success400 = Color(0xFF0f880f);
  static const Color success500 = Color(0xFF0d760d);

  static const Color warning50 = Color(0xFFfff7eb);
  static const Color warning75 = Color(0xFFffdcab);
  static const Color warning100 = Color(0xFFffce89);
  static const Color warning200 = Color(0xFFffb856);
  static const Color warning300 = Color(0xFFffaa33);
  static const Color warning400 = Color(0xFFb37724);
  static const Color warning500 = Color(0xFF9c681f);

  static const Color danger50 = Color(0xFFffe6e6);
  static const Color danger75 = Color(0xFFff9696);
  static const Color danger100 = Color(0xFFff6b6b);
  static const Color danger200 = Color(0xFFff2b2b);
  static const Color danger300 = Color(0xFFff0000);
  static const Color danger400 = Color(0xFFb30000);
  static const Color danger500 = Color(0xFF9c0000);

  static const Color neutral0 = Color(0xFFffffff);
  static const Color neutral10 = Color(0xFFfafbfb);
  static const Color neutral20 = Color(0xFFf5f6f7);
  static const Color neutral30 = Color(0xFFebedf0);
  static const Color neutral40 = Color(0xFFdfe2e6);
  static const Color neutral50 = Color(0xFFc2c7d0);
  static const Color neutral60 = Color(0xFFb3b9c4);
  static const Color neutral70 = Color(0xFFa6aebb);
  static const Color neutral80 = Color(0xFF98a1b0);
  static const Color neutral90 = Color(0xFF8993a4);
  static const Color neutral100 = Color(0xFF7a8699);
  static const Color neutral200 = Color(0xFF6b788e);
  static const Color neutral300 = Color(0xFF5d6b82);
  static const Color neutral400 = Color(0xFF505f79);
  static const Color neutral500 = Color(0xFF42526d);
  static const Color neutral600 = Color(0xFF354764);
  static const Color neutral700 = Color(0xFF243757);
  static const Color neutral800 = Color(0xFF15294b);
  static const Color neutral900 = Color(0xFF091e42);
// !By Praveen Sir
  static const Color searchFieldOutline = Color(0xFFC7C3C3);
  static const Color lightGreen200 = Color(0xFFDCE5E6);
  static const Color appColor = Color(0xFFC7C3C3);
  static const Color bgNew = Color(0xFFF8F8F8);

  // ! Zakir Sir
  static Color transparentlab = Color(0xFFA4A4A499);
  static Color neu8 = Color(0xFF17B7B7B);
  //D4D4D4
  static Color neutral5 = Color(0xFF1D4D4D4);
  static const Color deepGreen300 = Color(0xFFC3D4D7);
  static const Color dangerP100 = Color(0xFFFF6B6B);
  static const Color warningP300 = Color(0xFFFFAA33);
  static const Color secodaryP300 = Color(0xFF169D88);

  static const Color healthCardColor = Color.fromARGB(255, 211, 36, 68);

  //Shivani
  static const Color redDashboardDisCardColor = Color(0xFFFF6464);
  static const Color homePageDividerBorderColor = Color(0xFF8D8D8D);
  static const Color ambulanceBookingColor = Color(0xFF7F7F7F);
  static const Color cta4 = Color(0xFFFBF7F7);
  static const Color cta5= Color(0xFFEEEEEE);
}
