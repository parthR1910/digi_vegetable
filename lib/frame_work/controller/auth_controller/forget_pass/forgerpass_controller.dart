import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final forgetPassController = ChangeNotifierProvider((ref) => ForgetPassController());
class ForgetPassController extends ChangeNotifier{

  final emailController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> forgetPassKey = GlobalKey();
  final GlobalKey<FormState> setNewPassKey = GlobalKey();

  String otpValue = "1234";
  String? otp;
  get(String val){
    otp = val;
    notifyListeners();
  }
  
  nextButton(BuildContext context){
    if(forgetPassKey.currentState!.validate()){
      context.pushNamed(AppRoute.otp);
    }
  }
  /// otp verification
  confirm(BuildContext context){
    if(otp !=null&& otp!.length == 4 && otp == otpValue){
      print("Your OTP $otp");
      context.pushAndReplaceNamed(AppRoute.setNewPassword);
    }else{
      print("Wrong opt");
    }
    notifyListeners();
  }

  /// set new Pass
  changePassWordButton(BuildContext context){
    if(setNewPassKey.currentState!.validate()){
      print("PassWord Changed succesfully");
      context.pushAndRemoveUntilNamed(AppRoute.changePassGreeting);
    }
    notifyListeners();
  }

}