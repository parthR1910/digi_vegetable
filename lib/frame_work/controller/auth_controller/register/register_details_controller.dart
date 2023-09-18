import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final registerDetailsController = ChangeNotifierProvider((ref) => RegisterDetailsController());


class RegisterDetailsController extends ChangeNotifier{

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


}