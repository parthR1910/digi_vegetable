import 'package:digi_vegetable/frame_work/controller/product_filter/product_filter_controller.dart';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import '../../../utils/theme/text_styles.dart';
import '../../../utils/theme/theme.dart';

class CategoryFilter extends ConsumerWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final productFilterWatch =  ref.watch(productFilterController);

    final categoryFilter = productFilterWatch.filters[0];
    List<Filter> categoryFiltersList =  categoryFilter.filters;

    return SizedBox(
      width: context.screenWidth,
      child: Padding(
        padding:  EdgeInsets.only(left: 8.0.w),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            Text(categoryFilter.categoryName,style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
            SizedBox(height: 10.h,),
            SizedBox(
              width: context.screenWidth,
              child: Wrap(
                  spacing: 20,
                  runSpacing: 10,
                  children: List.generate(
                      categoryFiltersList.length ~/ 2 + 1,
                          (index) {
                        final catList = categoryFiltersList[index];
                        if(categoryFiltersList.length ~/2 == index){
                          return IconButton.filled(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r))
                            ),
                              onPressed: (){
                              context.pushNamed(AppRoute.categorySelection);
                              }, icon: const Icon(Icons.arrow_forward,));
                        }else{
                          return
                            FilterChip(
                                showCheckmark: false,
                                selectedColor: AppColors.primary,
                                label: Text(catList.name,style: TextStyles.w600.copyWith(fontSize: 14.sp,color:catList.isSelected?AppColors.white: AppColors.black),),
                                selected: catList.isSelected,
                                // selected: filterWatch.selectedCategories
                                //     .contains(catList),
                                onSelected: (selected) {
                                  productFilterWatch.updateSelectedCategoryFilter(selected, index);
                                });
                        }
                      })),
            )
          ],
        ),
      ),
    );
  }
}
