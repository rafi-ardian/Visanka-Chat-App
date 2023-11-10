import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:visanka_chat_app/app/modules/post/controllers/post_controller.dart';

import '../../../../themes.dart';
import '../../../routes/app_pages.dart';

class PostUploadView extends GetView<PostController> {
  PostUploadView({
    super.key,
  });

  final controller = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        title: Text('Upload'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Obx(() => Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: greyBrightColor,
                      borderRadius: BorderRadius.circular(12),
                      image: controller.image != null
                          ? DecorationImage(
                              image: FileImage(File(controller.image!.path)),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: Center(
                      child: controller.image != null
                          ? null
                          : FaIcon(FontAwesomeIcons.handPointer),
                    ),
                  )),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: blueDarkFour,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: blueDarkFour,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          controller.pickImage(ImageSource.gallery);
                        },
                        icon: FaIcon(FontAwesomeIcons.file)),
                    IconButton(
                        onPressed: () {
                          controller.pickImage(ImageSource.camera);
                        },
                        icon: FaIcon(FontAwesomeIcons.camera)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select type",
                    style: semiBoldText15,
                  ),
                  SizedBox(height: 5),
                  ListTile(
                    title: Text('Status', style: semiBoldText13),
                    subtitle: Text("Only shows for 24hour"),
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
                    title: Text('Post', style: semiBoldText13),
                    subtitle: Text("Show permanent (can be deleted)"),
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
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(Routes.DASHBOARD);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(greenApple),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(double.infinity, 50),
                  ),
                ),
                child: Text(
                  "Upload",
                  style: regulerText20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
