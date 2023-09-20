import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:path/path.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

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
    ];
    return SizedBox(
      height: 200.h,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categoryImages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 25,
        ),
        itemBuilder: (context, index) {
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
                    height: 35.h,
                    width: 35.w,
                  )),
              Text(basenameWithoutExtension(categoryImg),style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.black),)
            ],
          );
        },
      ),
    );
  }
}
