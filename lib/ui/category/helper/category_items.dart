import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:path/path.dart';

import '../../utils/theme/app_assets.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categoryImages = [
      AppAssets.fruitsIcon,
      AppAssets.rootsIcon,
      AppAssets.leavesIcon,
      AppAssets.fungiIcon,
      AppAssets.stemImg,
      AppAssets.podImg,
      AppAssets.flowerImg,
      AppAssets.bulbsImg,
      AppAssets.fruitsIcon,
      AppAssets.rootsIcon,
      AppAssets.leavesIcon,
      AppAssets.fungiIcon,
      AppAssets.stemImg,
      AppAssets.podImg,
      AppAssets.flowerImg,
      AppAssets.bulbsImg,
    ];
    return SizedBox(
      width: context.screenWidth,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 10.h,
        // spacing: 25.w,
        children: List.generate(categoryImages.length, (index) {
          final categoryImg = categoryImages[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton.filledTonal(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => AppColors.primary.withOpacity(0.5)),
                  ),
                  onPressed: () {},
                  icon: Image.asset(
                    categoryImg,
                    height: 80.h,
                    width: 80.w,
                  )),
              Text(basenameWithoutExtension(categoryImg),style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.black),)
            ],
          );
        })
      ),
    );
  }
}
