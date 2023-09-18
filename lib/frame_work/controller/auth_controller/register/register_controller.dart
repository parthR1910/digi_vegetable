
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
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

  String otpValue = "1234";
  String? otp;
  get(String val){
    otp = val;
    notifyListeners();
  }

  confirm(BuildContext context){
    if(otp !=null&& otp!.length == 4 && otp == otpValue){
      print("Your OTP $otp");
      context.pushAndReplaceNamed(AppRoute.registerGreeting);
    }else{
      print("Wrong opt");
    }
    notifyListeners();
  }
  registerButton(BuildContext context){
    if(registerKey.currentState!.validate()){
      print("you register");
      context.pushNamed(AppRoute.registerOtp);
    }
    notifyListeners();
  }
}