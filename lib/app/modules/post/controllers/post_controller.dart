import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PostController extends GetxController {
  var selectedRadio = 'private'.obs;
  Rx<XFile?> _image = Rx<XFile?>(null);
  XFile? get image => _image.value;
  set image(XFile? value) => _image.value = value;

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    XFile? pickedFile = await _picker.pickImage(source: source);
    image = pickedFile;
  }

  void setSelectedRadio(String value) {
    selectedRadio.value = value;
  }
}
