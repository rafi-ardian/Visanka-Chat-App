import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:visanka_chat_app/app/modules/chat/views/chat_room_view.dart';
import 'package:visanka_chat_app/app/modules/profile/views/settings_view.dart';
import 'package:visanka_chat_app/app/modules/profile/widgets/card.dart';
import 'package:visanka_chat_app/app/routes/app_pages.dart';
import 'package:visanka_chat_app/themes.dart';

import '../controllers/home_controller.dart';
import 'pending_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blackColor,
          title: Text("Profile"),
          actions: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.bell),
              onPressed: () {
                Get.to(PendingView());
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Get.to(SettingsView());
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "rafi ardian",
                              style: semiBoldText25,
                            ),
                            Text(
                              "2 November 2006",
                              style: regulerText14,
                            ),
                          ],
                        ),
                        CircleAvatar(radius: 35)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Friends",
                    style: semiBoldText20.copyWith(color: blackColor),
                  ),
                ),
                Tab(
                  child: Text(
                    "Groups",
                    style: semiBoldText20.copyWith(color: blackColor),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: CircleAvatar(radius: 30),
                          title: Text(
                            "Friend",
                            style: semiBoldText15,
                          ),
                          subtitle: Text(
                            "21 October 1997",
                            style: regulerText12,
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Get.to(ChatRoomView());
                          },
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: CircleAvatar(radius: 30),
                          title: Text(
                            "Group",
                            style: semiBoldText15,
                          ),
                          subtitle: Text(
                            "27 members",
                            style: regulerText12,
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Get.to(ChatRoomView());
                          },
                        ),
                      );
                    },
                  ),
                  // Column(
                  //   children: [
                  //     Column(
                  //       children: [
                  //         TextField(
                  //           decoration: InputDecoration(
                  //               hintText: "Create post",
                  //               contentPadding: EdgeInsets.all(18),
                  //               isCollapsed: true,
                  //               filled: true,
                  //               fillColor: greyBrightColor,
                  //               focusedBorder: OutlineInputBorder(
                  //                   borderSide: BorderSide(color: Colors.blue),
                  //                   borderRadius: BorderRadius.circular(12)),
                  //               border: OutlineInputBorder(
                  //                   borderSide: BorderSide.none,
                  //                   borderRadius: BorderRadius.circular(12))),
                  //         ),
                  //         Icon(Icons.fork_right)
                  //       ],
                  //     ),
                  //     Expanded(
                  //       child: GridView.builder(
                  //         gridDelegate:
                  //             SliverGridDelegateWithFixedCrossAxisCount(
                  //           crossAxisCount: 2,
                  //         ),
                  //         itemCount: 20,
                  //         itemBuilder: (BuildContext context, int index) {
                  //           return Container(
                  //             height: 100,
                  //             margin: EdgeInsets.all(2),
                  //             decoration: BoxDecoration(
                  //               // color: Colors.amber,
                  //               image: DecorationImage(
                  //                   image:
                  //                       AssetImage("assets/images/example.jpg"),
                  //                   fit: BoxFit.cover),
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// class HomeView extends GetView<HomeController> {
//   HomeView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(HomeController());
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: blackColor,
//         title: Text("Profile"),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: () {
//               print('Settings Clicked');
//             },
//           ),
//         ],
//       ),
//       // resizeToAvoidBottomInset: false,
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "rafi ardian",
//                             style: semiBoldText25,
//                           ),
//                           Text(
//                             "2 November 2006",
//                             style: regulerText14,
//                           ),
//                         ],
//                       ),
//                       CircleAvatar(radius: 35)
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(2),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         suffixIcon: Icon(Icons.search),
//                         contentPadding: EdgeInsets.all(18),
//                         isCollapsed: true,
//                         filled: true,
//                         fillColor: greyBrightColor,
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.blue),
//                             borderRadius: BorderRadius.circular(12)),
//                         border: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                             borderRadius: BorderRadius.circular(12))),
//                   ),
//                 ),
//               ],
//             ),
//             DefaultTabController(
//               length: 3,
//               child: TabBar(tabs: [
//                 Tab(
//                   child: Text(
//                     "data",
//                     style: semiBoldText15.copyWith(color: blackColor),
//                   ),
//                 ),
//                 Tab(
//                   child: Text(
//                     "asdas",
//                     style: semiBoldText15.copyWith(color: blackColor),
//                   ),
//                 ),
//                 Tab(
//                   child: Text(
//                     "data",
//                     style: semiBoldText15.copyWith(color: blackColor),
//                   ),
//                 ),
//               ]),
//             ),
//             Expanded(
//               child: TabBarView(children: [
//                 Container(
//                   height: 100,
//                   color: Colors.amber,
//                 ),
//                 Container(
//                   height: 100,
//                   color: Colors.red,
//                 ),
//                 Container(
//                   height: 100,
//                   color: Colors.amber,
//                 ),
//               ]),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Column(
//   children: [
//     CardView(
//       color: Colors.black12,
//       icon: FontAwesomeIcons.userLarge,
//       title: "Friends",
//       subtitle: "293",
//     ),
//     CardView(
//       color: greyBrightColor,
//       icon: FontAwesomeIcons.users,
//       title: "Groups",
//       subtitle: "12",
//     ),
//     CardView(
//       color: redColor,
//       icon: FontAwesomeIcons.solidBell,
//       title: "Pending",
//       subtitle: "50",
//     ),
//   ],
// ),
// Card(
//   elevation: 1,
//   child: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Column(
//           children: [
//             Text(
//               "Your post",
//               style: mediumText35,
//             ),
//             Text("9",
//                 style: regulerText35.copyWith(color: blackColor))
//           ],
//         ),
//         Card(
//           elevation: 1,
//           color: blueDarkFour,
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12)),
//           child: Center(
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                   vertical: 30, horizontal: 20),
//               child: Icon(Icons.add),
//             ),
//           ),
//         )
//       ],
//     ),
//   ),
// )
// Container(
//   height: 250,
//   width: 350,
//   margin: EdgeInsets.all(15),
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(15), color: greyColor),
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "rafi ardian",
//                 style: regulerText25.copyWith(color: blackColor),
//               ),
//               Text(
//                 "1 August 2003",
//                 style: regulerText14.copyWith(color: blackColor),
//               ),
//             ],
//           ),
//           CircleAvatar(radius: 35)
//         ],
//       ),
//       GestureDetector(
//         onTap: () {
//           showStickyFlexibleBottomSheet(
//             minHeight: 0,
//             initHeight: 0.5,
//             maxHeight: 1,
//             headerHeight: 50,
//             context: context,
//             bottomSheetBorderRadius: BorderRadius.circular(15),
//             headerBuilder: (BuildContext context, double offset) {
//               return Container(
//                 height: 50,
//                 width: Get.width,
//                 decoration: BoxDecoration(color: whiteColor),
//                 child: Center(
//                   child: Text(
//                     textAlign: TextAlign.center,
//                     "Friend list",
//                     style: semiBoldText25,
//                   ),
//                 ),
//               );
//             },
//             bodyBuilder: (BuildContext context, double offset) {
//               return SliverChildListDelegate(
//                 <Widget>[
//                   ListView.builder(
//                     shrinkWrap: true,
//                     physics: AlwaysScrollableScrollPhysics(),
//                     itemCount: 20,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         margin: EdgeInsets.symmetric(
//                             vertical: 5, horizontal: 5),
//                         child: ListTile(
//                           onTap: () {},
//                           title: Text(
//                             "friends",
//                             style: regulerText20,
//                           ),
//                           subtitle: Text("9 November 2001"),
//                           leading: CircleAvatar(radius: 40),
//                           trailing: Row(
//                             mainAxisSize: MainAxisSize
//                                 .min, // Agar Row tidak memenuhi seluruh ruang ListTile
//                             children: [
//                               IconButton(
//                                 icon: Icon(Icons.check,
//                                     color: Colors
//                                         .green), // Logo ceklis
//                                 onPressed: () {
//                                   // Fungsionalitas ketika tombol ceklis ditekan
//                                 },
//                               ),
//                               IconButton(
//                                 icon: Icon(Icons.close,
//                                     color:
//                                         Colors.red), // Logo silang
//                                 onPressed: () {
//                                   // Fungsionalitas ketika tombol silang ditekan
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   )
//                 ],
//               );
//             },
//             anchors: [0, 0.5, 1],
//           );
//         },
//         child: Container(
//           width: Get.width / 1.7,
//           margin: EdgeInsets.all(15),
//           padding: EdgeInsets.all(15),
//           decoration: BoxDecoration(
//               color: blackColorFivePercent,
//               borderRadius: BorderRadius.circular(8)),
//           child:
//            Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text(
//                 "Friends",
//                 style: regulerText20.copyWith(color: whiteColor),
//               ),
//               // VerticalDivider(color: blackColor, thickness: 1),
//               Text(
//                 "293",
//                 style: regulerText20.copyWith(color: whiteColor),
//               ),
//             ],
//           ),
//         ),
//       )

//     ],
//   ),
// ),

// Expanded(
//   child: Column(
//     children: [
//       Text(
//         "Pending",
//         style: mediumText35.copyWith(color: blackColor),
//       ),
//       Expanded(
//         child: ListView.builder(
//           shrinkWrap: true,
//           physics: AlwaysScrollableScrollPhysics(),
//           itemCount: 40,
//           itemBuilder: (context, index) {
//             return Container(
//               margin:
//                   EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//               child: ListTile(
//                 onTap: () {},
//                 title: Text(
//                   "friends",
//                   style: regulerText20,
//                 ),
//                 subtitle: Text("9 November 2001"),
//                 leading: CircleAvatar(radius: 40),
//                 trailing: Row(
//                   mainAxisSize: MainAxisSize
//                       .min, // Agar Row tidak memenuhi seluruh ruang ListTile
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.check,
//                           color: Colors.green), // Logo ceklis
//                       onPressed: () {
//                         // Fungsionalitas ketika tombol ceklis ditekan
//                       },
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.close,
//                           color: Colors.red), // Logo silang
//                       onPressed: () {
//                         // Fungsionalitas ketika tombol silang ditekan
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       )
//     ],
//   ),
// )
