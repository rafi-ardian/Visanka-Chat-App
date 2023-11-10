import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:story/story.dart';
import 'package:visanka_chat_app/app/modules/post/views/post_upload_view.dart';
import 'package:visanka_chat_app/themes.dart';

import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  PostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        title: Text('Status', style: regulerText20),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.plus),
            onPressed: () {
              Get.to(PostUploadView());
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: CircleAvatar(radius: 40));
                  },
                )),
            Divider(),
            Expanded(
                flex: 5,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Row(
                              children: [
                                CircleAvatar(),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Friends",
                                      style: regulerText14,
                                    ),
                                    Text(
                                      "2w",
                                      style: regulerText12,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: blueDarkThree,
                            height: 400,
                            width: Get.width,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nibh purus, auctor eget gravida in, ultrices vel magna. Aenean arcu dui, placerat nec ornare a, rutrum eget nulla. Duis non sapien ex. Donec non tempor enim, in cursus nunc.",
                                      style: regulerText13,
                                      textAlign: TextAlign.justify),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
