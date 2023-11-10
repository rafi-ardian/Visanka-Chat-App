import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:visanka_chat_app/themes.dart';

import '../../login/views/login_view.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          backgroundColor: whiteColor,
          splash: ("assets/images/splash.gif"),
          nextScreen: LoginView(),
        ),
      ),
    );
  }
}
