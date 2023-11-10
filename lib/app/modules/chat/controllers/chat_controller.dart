import 'package:get/get.dart';

class ChatController extends GetxController {
  var selectedRadio = 'private'.obs;

  void setSelectedRadio(String value) {
    selectedRadio.value = value;
  }
}
