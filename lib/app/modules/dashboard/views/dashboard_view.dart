import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:visanka_chat_app/app/modules/chat/views/chat_view.dart';
import 'package:visanka_chat_app/app/modules/profile/views/home_view.dart';
import 'package:visanka_chat_app/app/modules/post/views/post_view.dart';
import 'package:visanka_chat_app/themes.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  final _inactiveColor = Colors.grey;

  final controller = Get.put(DashboardController());

  DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        child: Scaffold(
          body: getBody(),
          bottomNavigationBar: _buildBottomBar(),
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return BottomNavigationBar(
      currentIndex: controller.currentIndex.value,
      backgroundColor: Colors.white,
      onTap: controller.changeTabIndex,
      iconSize: 30,
      selectedItemColor: blackColor,
      unselectedItemColor: greyColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: controller.currentIndex.value == 0
                ? FaIcon(FontAwesomeIcons.userLarge, size: 20)
                : FaIcon(FontAwesomeIcons.user, size: 20),
            label: ""),
        BottomNavigationBarItem(
            icon: controller.currentIndex.value == 1
                ? FaIcon(FontAwesomeIcons.solidComment, size: 20)
                : FaIcon(FontAwesomeIcons.comment, size: 20),
            label: ""),
        BottomNavigationBarItem(
            icon: controller.currentIndex.value == 2
                ? FaIcon(FontAwesomeIcons.solidPaperPlane, size: 20)
                : FaIcon(FontAwesomeIcons.paperPlane, size: 20),
            label: "")
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [HomeView(), ChatView(), PostView()];
    return IndexedStack(
      index: controller.currentIndex.value,
      children: pages,
    );
  }
}
