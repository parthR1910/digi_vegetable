import 'dart:io';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:file_picker/file_picker.dart';


final registerDetailsController = ChangeNotifierProvider((ref) => RegisterDetailsController());


class RegisterDetailsController extends ChangeNotifier{

  final GlobalKey<FormState> registerDetailsKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  DateTime? selectedDate;
  TextEditingController birthDateController = TextEditingController();

  pickDate(BuildContext context) async {
    selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (selectedDate != null) {
      String date =
          '${selectedDate!.day} / ${selectedDate!.month} / ${selectedDate!.year}';
      birthDateController.text = date;
      notifyListeners();
    }
  }

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

  bool isLoading = false;
  continueButton(BuildContext context)async{
    if(registerDetailsKey.currentState!.validate()){
      if(birthDateController.text.isNotEmpty){
        isLoading = true;
        notifyListeners();
        await Future.delayed(const Duration(seconds: 2));
        isLoading = false;
        // ignore: use_build_context_synchronously
        context.pushAndRemoveUntilNamed(AppRoute.dashBoard);
      }else{
        Fluttertoast.showToast(msg: "Select Date");
      }
    }else{
      Fluttertoast.showToast(msg: "Invalid");
    }
    notifyListeners();
  }
  skipButton(BuildContext context){
    context.pushAndRemoveUntilNamed(AppRoute.dashBoard);
  }


}