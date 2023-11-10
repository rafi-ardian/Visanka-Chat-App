import 'package:flutter/material.dart';
import 'package:visanka_chat_app/app/modules/profile/views/password_change_view.dart';
import 'package:visanka_chat_app/app/routes/app_pages.dart';
import '../../../../themes.dart';
import 'package:get/get.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: blackColor,
      ),
      body: Container(
        // color: whiteColor,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              child: Icon(Icons.camera_alt),
            ),
            SizedBox(height: 20),
            Text(
              "test@gmail.com",
              style: semiBoldText25.copyWith(color: blackColor),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Change Password"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Get.to(PasswordChangeView());
              },
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(Routes.LOGIN);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(redButtonColor),
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
                "Logout",
                style: semiBoldText25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
