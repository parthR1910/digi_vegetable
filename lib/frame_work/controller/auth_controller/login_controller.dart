
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final logInController = ChangeNotifierProvider((ref) => LoginController());
class LoginController extends ChangeNotifier{

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> loginKey = GlobalKey();

  bool isCheckBoxSelected = false;
  updateCheckboxSelected(bool val){
    isCheckBoxSelected = val;
    notifyListeners();
  }

  loginButton(){
    if(loginKey.currentState!.validate()){
      print("you have login in");
    }
    notifyListeners();
  }
}