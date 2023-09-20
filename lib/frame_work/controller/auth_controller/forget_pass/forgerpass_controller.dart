import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

final forgetPassController = ChangeNotifierProvider((ref) => ForgetPassController());
class ForgetPassController extends ChangeNotifier{

  bool isNextLoading = false;
  bool isConfirmLoading = false;
  bool isChangedLoading = false;
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
  
  nextButton(BuildContext context)async{
    if(forgetPassKey.currentState!.validate()){
      isNextLoading = true;
      notifyListeners();
      await Future.delayed(const Duration(seconds: 2));
      isNextLoading= false;
      // ignore: use_build_context_synchronously
      context.pushNamed(AppRoute.otp);
    }
    notifyListeners();
  }
  /// otp verification
  confirm(BuildContext context)async{
    if(otp !=null&& otp!.length == 4 ){
      if( otp == otpValue){
        isConfirmLoading = true;
        notifyListeners();
        await Future.delayed(const Duration(seconds: 2));
        isConfirmLoading= false;
        // print("Your OTP $otp");
        // ignore: use_build_context_synchronously
        context.pushAndReplaceNamed(AppRoute.setNewPassword);
      }else{
        Fluttertoast.showToast(msg: "Wrong Otp");
      }
    }else{
      Fluttertoast.showToast(msg: "Invalid");
    }
    notifyListeners();
  }

  /// set new Pass
  changePassWordButton(BuildContext context)async{
    if(setNewPassKey.currentState!.validate()){
      if(newPasswordController.text == confirmPasswordController.text){
        isChangedLoading = true;
        notifyListeners();
        await Future.delayed(const Duration(seconds: 2));
        isChangedLoading = false;
        // print("Password Changed succesfully");
        // ignore: use_build_context_synchronously
        context.pushAndRemoveUntilNamed(AppRoute.changePassGreeting);
      }else{
        Fluttertoast.showToast(msg: "Password doesn't matched");
      }
    }else{
      Fluttertoast.showToast(msg: "Invalid Email");
    }
    notifyListeners();
  }

}