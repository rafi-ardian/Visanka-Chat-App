import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:visanka_chat_app/app/modules/chat/views/chat_room_view.dart';
import 'package:visanka_chat_app/app/modules/chat/views/create_group_view_1.dart';
import 'package:visanka_chat_app/app/routes/app_pages.dart';
import 'package:visanka_chat_app/themes.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              textInputAction: TextInputAction.done,
              cursorColor: blueColor,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  iconColor: blackColor,
                  contentPadding: EdgeInsets.all(18),
                  isCollapsed: true,
                  filled: true,
                  fillColor: greyBrightColor,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.group_add),
              onPressed: () {
                Get.to(CreateGroupView());
              },
            ),
          ],
        ),
        body: Center(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.only(left: 5, top: 5),
                leading: CircleAvatar(radius: 35),
                title: Text(
                  "kei ${index + 1}",
                  style: mediumText15,
                ),
                subtitle: Text("subtitle"),
                onTap: () {
                  // Get.toNamed(Routes.ROOMCHAT);
                  Get.to(ChatRoomView());
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
