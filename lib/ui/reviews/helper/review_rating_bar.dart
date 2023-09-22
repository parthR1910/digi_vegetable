import 'package:digi_vegetable/frame_work/controller/reviews_controller/reviews_controller.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class ReviewRatingBar extends ConsumerWidget {
  const ReviewRatingBar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final reviewWatch = ref.watch(reviewsController);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          reviewWatch.ratingFilter.length,
              (index) {
            final rateList = reviewWatch.ratingFilter[index];
            return FilterChip(
                showCheckmark: false,
                avatar: rateList.isSelected ? const Icon(Icons.star,color: AppColors.white,):const Icon(Icons.star,color: AppColors.black,),
                selectedColor: AppColors.primary,
                label: Text(rateList.name.toString(),style: TextStyles.w600.copyWith(fontSize: 14.sp,color:rateList.isSelected? AppColors.white: AppColors.black),),
                selected: rateList.isSelected,
                // selected: filterWatch.selectedCategories
                //     .contains(catList),
                onSelected: (selected) {
                 reviewWatch.updateSelectedRating(selected, index);
                }).marginOnly(left: 5.w);
          }),
    );
  }
}
