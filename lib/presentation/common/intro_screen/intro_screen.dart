import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:get/get.dart';
import '../../../core/utils/color_constant.dart';
import 'controller/intro_controller.dart';

class IntroScreen extends GetView<IntroController> {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey key1 = GlobalKey();
    return IntroductionScreen(
      key: key1,
      globalBackgroundColor: ColorConstant.white,
      pages: [
        PageViewModel(
          title: "Welcome to News",
          body: "Flutter is a powerful framework for building cross-platform apps.",
          image: const Center(child: Icon(Icons.flutter_dash, size: 100.0)),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18.0),
          ),
        ),
        PageViewModel(
          title: "Fast Development",
          body: "Build apps faster with a rich set of customizable widgets.",
          image: const Center(child: Icon(Icons.code, size: 100.0)),
        ),
        PageViewModel(
          title: "Hot Reload",
          body: "Experience hot reload to see changes instantly.",
          image: const Center(child: Icon(Icons.refresh, size: 100.0)),
        ),
      ],
      onDone: () {
        controller.onDone();
      },
      onSkip: () {
        controller.onSkip();
      },
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}
