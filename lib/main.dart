import 'package:daily_news/routes/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/utils/color_constant.dart';
import 'core/utils/dismiss_keyboard.dart';
import 'core/utils/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorConstant
          .cta // Change this color to your desired status bar color
      ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) async {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return DismissKeyboard(
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.initialRoute,
            getPages: AppRoutes.pages,
            title: "Daily_News",
          ),
        );
      },
    );
  }
}
