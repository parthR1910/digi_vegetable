
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  bool isOptLoading = false;
  confirm(BuildContext context)async{
    if(otp !=null&& otp!.length == 4 ){
        if( otp == otpValue){
          isOptLoading = true;
          notifyListeners();
          await Future.delayed(const Duration(seconds: 2));
          isOptLoading = false;
          // print("Your OTP $otp");
          // ignore: use_build_context_synchronously
          context.pushAndReplaceNamed(AppRoute.registerGreeting);
        }else{
          Fluttertoast.showToast(msg: "Wrong Otp");
        }
    }else{
        Fluttertoast.showToast(msg: "Invalid");
    }
    notifyListeners();
  }

  bool isRegisterButtonLoading= false;
  registerButton(BuildContext context)async{
    if(registerKey.currentState!.validate()){
      if(isCheckBoxSelected){
        isRegisterButtonLoading = true;
        notifyListeners();
        await Future.delayed(const Duration(seconds: 2));
        isRegisterButtonLoading = false;
        // print("you register");
        // ignore: use_build_context_synchronously
        context.pushNamed(AppRoute.registerOtp);
      }else {
        Fluttertoast.showToast(msg: "Select Terms and Condition");
      }
    }else {
      Fluttertoast.showToast(msg: "Invalid");
    }
    notifyListeners();
  }
}