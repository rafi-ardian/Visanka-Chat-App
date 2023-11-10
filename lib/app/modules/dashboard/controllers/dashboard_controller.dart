import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxInt currentIndex = 1.obs;

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}
