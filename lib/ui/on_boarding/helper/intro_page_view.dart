import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';

import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';




class IntroPageView extends StatelessWidget {
  final IntroPageModel model;

  const IntroPageView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300.h,
              width: double.infinity.w,
                child: Image.asset(model.img,fit: BoxFit.fill,)),
            SizedBox(height: 50.h,),
            Text(textAlign: TextAlign.center,model.title,style: TextStyles.w600.copyWith(fontSize: 22.sp,color: AppColors.black),),
            Text(textAlign: TextAlign.center,model.subtile,style: TextStyles.w400.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor)),
          ],
        ),
      ),
    );
  }
}

typedef IntroPageModel = ({String img, String title, String subtile});