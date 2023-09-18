import 'package:digi_vegetable/ui/auth/register/helper/register_detail/register_details_form.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/theme/app_assets.dart';
import '../../utils/theme/text_styles.dart';

class RegisterDetails extends StatelessWidget {
  const RegisterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up",style: TextStyles.w600.copyWith(fontSize: 28.sp,color: AppColors.black),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
        child:  Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          // profileWatch.pickImageFile(context);
                        },
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            CircleAvatar(
                              radius: 60.r,
                              backgroundImage: const AssetImage(
                                AppAssets.userImgPlaceholder,
                              ),
                            ),
                            Positioned(
                                right: 0,
                                bottom: 0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: CircleAvatar(
                                    radius: 20.r,
                                    backgroundImage: const AssetImage(AppAssets.camaraIcon),
                                  ),
                                ))
                          ],
                        )),
                    SizedBox(height: 10.h,),
                    Text("Upload Image",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
                    SizedBox(height: 30.h,),
                    const RegisterDetailsForm(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
