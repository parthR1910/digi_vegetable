import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_button.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import '../../../../frame_work/controller/product_filter_controller/product_filter_controller.dart';
import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/text_styles.dart';
import '../../../utils/theme/theme.dart';

class CategorySelection extends ConsumerWidget {
  const CategorySelection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productFilterWatch = ref.watch(productFilterController);

    final categoryFilter = productFilterWatch.filters[0];
    List<Filter> categoryFiltersList = categoryFilter.filters;

    return Scaffold(
      body: Column(
        children: [
          const CommonAppbar(title: "Categories"),
          Expanded(
            child: SizedBox(
              width: context.screenWidth,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoryFilter.categoryName,
                      style: TextStyles.w600
                          .copyWith(fontSize: 16.sp, color: AppColors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: context.screenWidth,
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        children: List.generate(categoryFiltersList.length, (index) {
                          final catList = categoryFiltersList[index];

                          return FilterChip(
                              showCheckmark: false,
                              selectedColor: AppColors.primary,
                              label: Text(
                                catList.name,
                                style: TextStyles.w600.copyWith(
                                    fontSize: 14.sp,
                                    color: catList.isSelected
                                        ? AppColors.white
                                        : AppColors.black),
                              ),
                              selected: catList.isSelected,
                              // selected: filterWatch.selectedCategories
                              //     .contains(catList),
                              onSelected: (selected) {
                                productFilterWatch.updateSelectedCategoryFilter(
                                    selected, index);
                              });
                        }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          CommonButton(onTap: (){
            context.pop();
          }, btnText: "Apply").paddingSymmetric(horizontal: 16.w,vertical: 10.h)
        ],
      ),
    );
  }
}
