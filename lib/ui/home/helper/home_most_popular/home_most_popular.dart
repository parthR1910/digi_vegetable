import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/home/helper/home_most_popular/helper/home_most_popular_header.dart';
import 'package:digi_vegetable/ui/home/helper/home_most_popular/helper/home_most_popular_product_card.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/app_string.dart';
import '../../../utils/theme/text_styles.dart';
import '../../../utils/theme/theme.dart';

class HomeMostPopular extends ConsumerWidget {
  const HomeMostPopular({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final appStringWatch = ref.watch(appStringController);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(appStringWatch.mostPopularKey,style: TextStyles.w800.copyWith(fontSize: 16.sp,color: AppColors.black),),
            // Text("See All",style: TextStyle(fontSize: 18.sp,color: AppColors.black),),
            TextButton(onPressed: (){
              context.pushNamed(AppRoute.mostPopular);
            }, child: Text(appStringWatch.seeAllKey,style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.black),))
          ],
        ).paddingHorizontal(10.w),
        SizedBox(height: 10.h,),
        const HomeMostPopularHeader(),
        SizedBox(height: 10.h,),
        const HomeMostPopularProductCard(),
        SizedBox(height: 10.h,),
      ],
    );
  }
}
