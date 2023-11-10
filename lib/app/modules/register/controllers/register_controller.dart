import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerFirstName = TextEditingController();
  TextEditingController controllerLastName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPhoneNumber = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode phoneNumberFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  RxInt currentIndex = 0.obs;
}
