import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 15.h,
        left: 16.w,
        right: 16.w,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
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
                  Text("Search",style: TextStyles.w400.copyWith(fontSize: 18.sp,color: AppColors.hintTextColor),),
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
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Special Offers",
                style: TextStyles.w800
                    .copyWith(fontSize: 16.sp, color: AppColors.black),
              ),
              // Text("See All",style: TextStyle(fontSize: 18.sp,color: AppColors.black),),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
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
