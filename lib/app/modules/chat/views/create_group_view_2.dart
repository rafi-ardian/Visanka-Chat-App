import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:visanka_chat_app/app/routes/app_pages.dart';

import '../../../../themes.dart';
import '../controllers/chat_controller.dart';

class CreateGroupView2 extends GetView<ChatController> {
  CreateGroupView2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        title: Text("Create group 2"),
        actions: [
          TextButton(
              onPressed: () {
                Get.offAllNamed(Routes.DASHBOARD);
              },
              child: Text(
                "Create",
                style: regulerText17.copyWith(color: whiteColor),
              ))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    child: FaIcon(FontAwesomeIcons.camera),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Group name",
                        style: semiBoldText15,
                      ),
                      SizedBox(height: 5),
                      TextField(
                        textInputAction: TextInputAction.done,
                        cursorColor: blueColor,
                        decoration: InputDecoration(
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
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Group type",
                        style: semiBoldText15,
                      ),
                      SizedBox(height: 5),
                      ListTile(
                        title: Text('Private', style: semiBoldText13),
                        subtitle: Text("Requires invitation to join"),
                        trailing: Obx(
                          () => Radio(
                            visualDensity: VisualDensity.compact,
                            value: 'private',
                            groupValue: controller.selectedRadio.value,
                            onChanged: (value) {
                              controller.setSelectedRadio(value!);
                            },
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Public', style: semiBoldText13),
                        subtitle: Text("Visible to all users"),
                        trailing: Obx(
                          () => Radio(
                            visualDensity: VisualDensity.compact,
                            value: 'public',
                            groupValue: controller.selectedRadio.value,
                            onChanged: (value) {
                              controller.setSelectedRadio(value!);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
