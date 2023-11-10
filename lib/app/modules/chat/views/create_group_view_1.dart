import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:visanka_chat_app/app/modules/chat/views/create_group_view_2.dart';

import '../../../../themes.dart';
import '../controllers/chat_controller.dart';

class CreateGroupView extends GetView<ChatController> {
  const CreateGroupView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        title: Text("Create group",
            style: regulerText17.copyWith(color: whiteColor)),
        actions: [
          TextButton(
              onPressed: () {
                Get.to(CreateGroupView2());
              },
              child: Text(
                "Next",
                style: regulerText17.copyWith(color: whiteColor),
              ))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(12),
                    // tileColor: greyBrightColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    onTap: () {},
                    leading: CircleAvatar(radius: 25),
                    title: Text(
                      "Friends",
                      style: regulerText17.copyWith(color: blackColor),
                    ),
                    subtitle: Text(
                      "21 Novermber 1999",
                      style: regulerText14,
                    ),
                    trailing: RoundCheckBox(
                      size: 35,
                      animationDuration: Duration(milliseconds: 130),
                      onTap: (value) {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
