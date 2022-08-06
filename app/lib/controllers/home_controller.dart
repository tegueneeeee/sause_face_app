import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

import '../main.dart';

class HomeController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  late XFile? _pickedFile;

  @override
  void onInit() {
    super.onInit();
    _pickedFile = null;
  }

  XFile? getImageFile() {
    return _pickedFile;
  }

  onImageButtonPressed() async {
    try {
      log.d("Enter Function");
      _pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 200,
        maxHeight: 200,
        imageQuality: 100,
      );
    } catch (e) {
      log.wtf(e);
    }
  }
}
