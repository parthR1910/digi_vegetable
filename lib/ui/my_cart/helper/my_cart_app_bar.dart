import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';

import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class MyCartAppBar extends StatelessWidget {
  const MyCartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:  Alignment.center,
      height: 60.h,
      width: context.screenWidth,
      decoration:  BoxDecoration(
        border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide(color: Colors.grey.shade300,width: 1.w))
      ),
      child: Text("My Cart",style: TextStyles.w800.copyWith(fontSize: 22.sp,color: AppColors.black),),
    );
  }
}
