import 'package:daily_news/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/color_constant.dart';
import '../../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 320.h,
              decoration: const BoxDecoration(
                  color: ColorConstant.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 2),
                  )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 55),
              child: Column(
                children: [
                  const Text(
                    "Login Page",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35.h,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 28.h,
                      child: Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: CustomTextFormField(
                              onChanged: (val) {},
                              prefix: Padding(
                                padding: EdgeInsets.only(
                                    left: 16.w, right: 16.w, top: 8.h),
                                child: const Icon(Icons.email),
                              ),
                              hintText: "Enter your email",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 35.h,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 28.h,
                      child: Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: CustomTextFormField(
                              onChanged: (val) {},
                              prefix: Padding(
                                padding: EdgeInsets.only(
                                    left: 16.w, right: 16.w, top: 8.h),
                                child: const Icon(Icons.email),
                              ),
                              hintText: "Enter your email",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
