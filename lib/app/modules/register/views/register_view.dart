import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:visanka_chat_app/app/modules/register/views/register_page_1.dart';
import 'package:visanka_chat_app/app/modules/register/views/register_page_2.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: getBody(),
        ));
  }

  Widget getBody() {
    List<Widget> pages = [RegisterPage1(), RegisterPage2()];
    return IndexedStack(
      index: controller.currentIndex.value,
      children: pages,
    );
  }
}
