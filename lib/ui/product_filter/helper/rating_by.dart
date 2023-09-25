import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import '../../../frame_work/controller/product_filter_controller/product_filter_controller.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class RatingBY extends ConsumerWidget {
  const RatingBY({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final productFilterWatch =  ref.watch(productFilterController);

    final ratingByFilter = productFilterWatch.filters[2];
    List<Filter> ratingByFiltersList =  ratingByFilter.filters;

    return SizedBox(
      width: context.screenWidth,
      child: Padding(
        padding:  EdgeInsets.only(left: 8.0.w),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Text(ratingByFilter.categoryName,style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
            SizedBox(height: 10.h,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    ratingByFiltersList.length,
                        (index) {
                      final rateList = ratingByFiltersList[index];
                      return FilterChip(
                        showCheckmark: false,
                        avatar: rateList.isSelected ? const Icon(Icons.star,color: AppColors.white,):const Icon(Icons.star,color: AppColors.black,),
                          selectedColor: AppColors.primary,
                          label: Text(rateList.name,style: TextStyles.w600.copyWith(fontSize: 14.sp,color:rateList.isSelected? AppColors.white: AppColors.black),),
                          selected: rateList.isSelected,
                          // selected: filterWatch.selectedCategories
                          //     .contains(catList),
                          onSelected: (selected) {
                            productFilterWatch.updateSelectedRatingBYFilter(selected, index);
                          }).marginOnly(left: 5.w);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
