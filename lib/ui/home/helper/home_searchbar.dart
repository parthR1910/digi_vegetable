import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_string.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class HomeSearchBar extends ConsumerWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final appStringWatch = ref.watch(appStringController);
    return Padding(
      padding: EdgeInsets.only(
        top: 15.h,
        left: 16.w,
        right: 16.w,
      ),
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
                      onPressed: () {
                        context.pushNamed(AppRoute.filter);
                      },
                      icon: Image.asset(
                        AppAssets.filterIcon,
                        height: 26.h,
                        width: 26.w,
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               appStringWatch.specialOfferKey,
                style: TextStyles.w800
                    .copyWith(fontSize: 16.sp, color: AppColors.black),
              ),
              // Text("See All",style: TextStyle(fontSize: 18.sp,color: AppColors.black),),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    appStringWatch.seeAllKey,
                    style: TextStyles.w600
                        .copyWith(fontSize: 14.sp, color: AppColors.black),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
