
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final registerController = ChangeNotifierProvider((ref) => RegisterController());
class RegisterController extends ChangeNotifier{

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> registerKey = GlobalKey();

  bool isCheckBoxSelected = false;
  updateCheckboxSelected(bool val){
    isCheckBoxSelected = val;
    notifyListeners();
  }

  registerButton(){
    if(registerKey.currentState!.validate()){
      print("you register");
    }
    notifyListeners();
  }
}