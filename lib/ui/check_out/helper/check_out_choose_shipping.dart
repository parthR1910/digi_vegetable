import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';

class CheckOutChooseShipping extends StatelessWidget {
  const CheckOutChooseShipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Choose Shipping",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
        SizedBox(height: 8.h,),
        ListTile(
          onTap: (){

          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r),side: BorderSide(color: Colors.grey.shade400,width: 1.2.w)),
          leading: Image.asset(AppAssets.shippingCargoIcon,scale: 22,color: Colors.black,),
          trailing: const Icon(Icons.navigate_next_sharp,color: Colors.black,),
          title: Text("Choose Shipping Type",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
        )
      ],
    );
  }
}
