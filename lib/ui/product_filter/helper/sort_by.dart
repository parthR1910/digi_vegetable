import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import '../../../frame_work/controller/product_filter_controller/product_filter_controller.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class SortBy extends ConsumerWidget {
  const SortBy({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final productFilterWatch =  ref.watch(productFilterController);

    final sortByFilter = productFilterWatch.filters[1];
    List<Filter> sortBYFiltersList =  sortByFilter.filters;

    return SizedBox(
      width: context.screenWidth,
      child: Padding(
        padding:  EdgeInsets.only(left: 8.0.w),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Text(sortByFilter.categoryName,style: TextStyles.w600.copyWith(fontSize: 16.sp,color:AppColors.black),),
            SizedBox(height: 10.h,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    sortBYFiltersList.length,
                        (index) {
                      final sortByList = sortBYFiltersList[index];
                      return FilterChip(
                          showCheckmark: false,
                          selectedColor: AppColors.primary,
                          label: Text(sortByList.name,style: TextStyles.w600.copyWith(fontSize: 14.sp,color:sortByList.isSelected? AppColors.white: AppColors.black),),
                          selected: sortByList.isSelected,
                          // selected: filterWatch.selectedCategories
                          //     .contains(catList),
                          onSelected: (selected) {
                            productFilterWatch.updateSelectedSortByFilter(selected, index);
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
