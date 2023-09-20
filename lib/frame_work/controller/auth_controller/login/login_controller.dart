
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final logInController = ChangeNotifierProvider((ref) => LoginController());
class LoginController extends ChangeNotifier{

  bool isLoading = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> loginKey = GlobalKey();

  bool isCheckBoxSelected = false;
  updateCheckboxSelected(bool val){
    isCheckBoxSelected = val;
    notifyListeners();
  }

  loginButton(BuildContext context)async{
    if(loginKey.currentState!.validate()){
       isLoading = true;
       notifyListeners();
       await Future.delayed(const Duration(seconds: 2));
       isLoading= false;
       // ignore: use_build_context_synchronously
       context.pushAndRemoveUntilNamed(AppRoute.dashBoard);
      // print("you have login in");
    }
    notifyListeners();
  }
}