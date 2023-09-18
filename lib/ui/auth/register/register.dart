import 'package:digi_vegetable/ui/auth/register/helper/register/register_form.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/theme/text_styles.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget,
    );
  }

  get _bodyWidget => Column(
    children: [
      Expanded(flex: 4,
        //     child: Container(
        //   color: Colors.black,
        // ),
        child: SizedBox(
          width: double.infinity,
            child: Image.asset(AppAssets.registerImage,fit: BoxFit.cover,)),
      ),
      Expanded(
          flex: 7,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Let's get started!",style: TextStyles.w600.copyWith(fontSize: 22.sp,color: AppColors.black),),
                Text("Please enter your valid data in order to create an account.",style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),),
                SizedBox(height: 40.h,),
                const RegisterForm(),
              ],
            ),
          ).paddingSymmetric(horizontal: 16.w,vertical:10.h )
      )
    ],
  );
}
