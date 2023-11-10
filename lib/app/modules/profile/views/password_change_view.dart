import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class PasswordChangeView extends GetView<HomeController> {
  const PasswordChangeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Old Password",
                  style: semiBoldText15,
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: controller.controllerOldPassword,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  cursorColor: blueColor,
                  decoration: InputDecoration(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter New Password",
                  style: semiBoldText15,
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: controller.controllerNewPassword,
                  textInputAction: TextInputAction.done,
                  cursorColor: blueColor,
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Confirm Password",
                  style: semiBoldText15,
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: controller.controllerConfirmPassword,
                  textInputAction: TextInputAction.done,
                  cursorColor: blueColor,
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
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
            Spacer(),
            ElevatedButton(
              onPressed: () {
                if (controller.controllerOldPassword.text.isNotEmpty &&
                    controller.controllerNewPassword.text.isNotEmpty &&
                    controller.controllerConfirmPassword.text.isNotEmpty) {
                  Get.snackbar(
                      backgroundColor: greenApple,
                      "successfull",
                      "Password changed");
                  Get.offAllNamed(Routes.DASHBOARD);
                } else {
                  Get.snackbar("warning", "field must be filled");
                }
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
                "save",
                style: semiBoldText25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
