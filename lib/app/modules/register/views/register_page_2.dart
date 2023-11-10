import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:visanka_chat_app/app/modules/register/controllers/register_controller.dart';
import 'package:visanka_chat_app/app/routes/app_pages.dart';
import 'package:visanka_chat_app/themes.dart';

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({
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
                    "Register 2",
                    style: semiBoldText40,
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: semiBoldText15,
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: controller.controllerEmail,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            focusNode: controller.emailFocus,
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(controller.phoneNumberFocus);
                            },
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
                            "Phone number",
                            style: semiBoldText15,
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: controller.controllerPhoneNumber,
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            focusNode: controller.phoneNumberFocus,
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(controller.passwordFocus);
                            },
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
                            "Password",
                            style:
                                semiBoldText15.copyWith(color: Colors.black45),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: controller.controllerPassword,
                            obscureText: true,
                            textInputAction: TextInputAction.next,
                            focusNode: controller.passwordFocus,
                            cursorColor: blueColor,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.remove_red_eye),
                                suffixIconColor: blackColor,
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
                      SizedBox(height: 35),
                    ],
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: FloatingActionButton(
                  onPressed: () {
                    controller.currentIndex.value = 0;
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.arrow_left,
                    size: 40,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: FloatingActionButton(
                  backgroundColor: greenApple,
                  onPressed: () {
                    if (controller.controllerEmail.text.isNotEmpty &&
                        controller.controllerPhoneNumber.text.isNotEmpty &&
                        controller.controllerPassword.text.isNotEmpty) {
                      Get.offAllNamed(Routes.LOGIN);
                      Get.snackbar(
                          backgroundColor: greenApple,
                          "successfull",
                          "successfully login");
                      controller.currentIndex.value = 0;
                    } else {
                      Get.snackbar("warning", "field must be filled");
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.check,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
