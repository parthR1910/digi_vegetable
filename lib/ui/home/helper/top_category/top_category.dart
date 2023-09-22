import 'package:digi_vegetable/ui/home/helper/top_category/helper/top_category_products.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/app_string.dart';
import '../../../utils/theme/text_styles.dart';

class TopCategories extends ConsumerWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final appStringWatch = ref.watch(appStringController);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(appStringWatch.topCategoriesKey,style: TextStyles.w800.copyWith(fontSize: 16.sp,color: AppColors.black),),
            TextButton(onPressed: (){}, child: Text(appStringWatch.seeAllKey,style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.black),))
          ],
        ).paddingHorizontal(10.w),
        SizedBox(height: 10.h,),
        const TopCategoryProducts()
      ],
    );
  }
}
