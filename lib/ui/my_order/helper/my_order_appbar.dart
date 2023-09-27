import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';

class MyOrderAppBar extends StatelessWidget {
  const MyOrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:  Alignment.center,
      height: 60.h,
      width: context.screenWidth,
      decoration:  BoxDecoration(
          border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide(color: Colors.grey.shade300,width: 1.w))
      ),
      child: Text("My Orders",style: TextStyles.w800.copyWith(fontSize: 22.sp,color: AppColors.black),),
    );
  }
}
