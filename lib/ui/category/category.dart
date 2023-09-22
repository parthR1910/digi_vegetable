import 'package:digi_vegetable/ui/category/helper/category_items.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/app_string.dart';
import '../app_routes/app_routes.dart';
import '../utils/theme/text_styles.dart';
import '../utils/theme/theme.dart';

class Category extends ConsumerWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
        centerTitle: true,
      ),
      body: _bodyWidget(ref,context),
    );
  }
  Widget _bodyWidget(WidgetRef ref,BuildContext context){
    final appStringWatch = ref.watch(appStringController);
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              context.pushNamed(AppRoute.search);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 7.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.grey.withOpacity(.8))),
              child: Row(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: Image.asset(
                        AppAssets.searchIcon,
                        height: 26.h,
                        width: 26.w,
                      )),
                  Text(appStringWatch.searchKey,style: TextStyles.w400.copyWith(fontSize: 18.sp,color: AppColors.hintTextColor),),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AppAssets.filterIcon,
                        height: 26.h,
                        width: 26.w,
                      ))
                ],
              ),
            ),
          ).paddingOnly(top: 8.h,left: 20.w,right: 20.w),
          SizedBox(
            height: 15.h,
          ),
          const CategoryItem(),
        ],
      ),
    );
  }
}
