import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:visanka_chat_app/themes.dart';

import '../controllers/register_controller.dart';

class RegisterPage1 extends StatelessWidget {
  const RegisterPage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Register",
                    style: semiBoldText40,
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Username",
                            style: semiBoldText15,
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: controller.controllerUsername,
                            textInputAction: TextInputAction.next,
                            cursorColor: blueColor,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(18),
                                isCollapsed: true,
                                filled: true,
                                fillColor: greyBrightColor,
                                // hintText: "Email or Phone number",
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(12)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First name",
                            style: semiBoldText15,
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: controller.controllerFirstName,
                            textInputAction: TextInputAction.next,
                            cursorColor: blueColor,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(18),
                                isCollapsed: true,
                                filled: true,
                                fillColor: greyBrightColor,
                                // hintText: "Email or Phone number",
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(12)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Last name (optional)",
                            style:
                                semiBoldText15.copyWith(color: Colors.black45),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: controller.controllerLastName,
                            textInputAction: TextInputAction.next,
                            cursorColor: blueColor,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(18),
                                isCollapsed: true,
                                filled: true,
                                fillColor: greyBrightColor,
                                // hintText: "Email or Phone number",
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(12)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                        ],
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       "Date of birth",
                      //       style: semiBoldText15,
                      //     ),
                      //     SizedBox(height: 5),
                      //     SfDateRangePicker()
                      //   ],
                      // ),
                      SizedBox(height: 35),
                    ],
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: FloatingActionButton(
                  onPressed: () {
                    if (controller.controllerUsername.text.isNotEmpty &&
                        controller.controllerFirstName.text.isNotEmpty &&
                        controller.controllerLastName.text.isNotEmpty) {
                      controller.currentIndex.value = 1;
                    } else {
                      Get.snackbar("warning", "field must be filled");
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(Icons.arrow_right_alt),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
