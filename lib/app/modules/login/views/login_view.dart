import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:visanka_chat_app/app/routes/app_pages.dart';
import 'package:visanka_chat_app/themes.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Login",
                  style: semiBoldText40,
                ),
                Flexible(
                    child:
                        Lottie.asset('assets/images/login.json', width: 200)),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email or Phone Number",
                          style: semiBoldText15,
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: controller.controllerEmailPhone,
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
                          "Password",
                          style: semiBoldText15,
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          controller: controller.controllerPassword,
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
                    SizedBox(height: 35),
                    ElevatedButton(
                      onPressed: () {
                        if (controller.controllerEmailPhone.text.isNotEmpty &&
                            controller.controllerPassword.text.isNotEmpty) {
                          Get.offAndToNamed(Routes.DASHBOARD);
                        } else {
                          Get.snackbar("warning", "field must be filled");
                        }
                      },
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, 50)),
                      ),
                      child: Text(
                        'Login',
                        style: regulerText20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "create account",
                          style: regulerText13.copyWith(color: greenDark),
                        ),
                        SizedBox(width: 3),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.REGISTER);
                              // print("object");
                            },
                            child: Text(
                              "here",
                              style: boldText13.copyWith(color: greenSage),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
