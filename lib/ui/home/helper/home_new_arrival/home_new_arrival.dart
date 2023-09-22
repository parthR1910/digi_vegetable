
import 'package:digi_vegetable/ui/home/helper/home_new_arrival/helper/new_arrival_product_card.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/app_string.dart';
import '../../../utils/theme/text_styles.dart';

class HomeNewArrival extends ConsumerWidget {
  const HomeNewArrival({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final appStringWatch = ref.watch(appStringController);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(appStringWatch.newArrivalKey,style: TextStyles.w800.copyWith(fontSize: 16.sp,color: AppColors.black),),
            // Text("See All",style: TextStyle(fontSize: 18.sp,color: AppColors.black),),
            TextButton(onPressed: (){}, child: Text(appStringWatch.seeAllKey,style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.black),))
          ],
        ).paddingHorizontal(10.w),
        SizedBox(height: 10.h,),
        const NewArrivalProductCard(),
        SizedBox(height: 10.h,),
      ],
    );
  }
}
