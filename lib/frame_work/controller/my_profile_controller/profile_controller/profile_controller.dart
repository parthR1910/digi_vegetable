import 'dart:io';

import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

final profileController = ChangeNotifierProvider((ref) => ProfileController());


class ProfileController extends ChangeNotifier{



  File? selectedImage;
  String? fileName;

  pickImageFile(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png']);
    if (result != null) {
      fileName = result.files.single.name;
      selectedImage = File(result.files.single.path!);
      notifyListeners();
    } else {
      Fluttertoast.showToast(msg: "pickImage");
    }
    notifyListeners();
  }
}