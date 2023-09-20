import 'package:digi_vegetable/ui/home/helper/home_most_popular/helper/most_popular_header.dart';
import 'package:digi_vegetable/ui/home/helper/home_most_popular/helper/most_popular_product_card.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/text_styles.dart';
import '../../../utils/theme/theme.dart';

class HomeMostPopular extends StatelessWidget {
  const HomeMostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Most Popular",style: TextStyles.w800.copyWith(fontSize: 16.sp,color: AppColors.black),),
            // Text("See All",style: TextStyle(fontSize: 18.sp,color: AppColors.black),),
            TextButton(onPressed: (){}, child: Text("See All",style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.black),))
          ],
        ).paddingHorizontal(10.w),
        SizedBox(height: 10.h,),
        const MostPopularHeader(),
        SizedBox(height: 10.h,),
        const MostPopularProductCard(),
        SizedBox(height: 10.h,),
      ],
    );
  }
}
