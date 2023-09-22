import 'package:digi_vegetable/ui/on_boarding/controller/on_boarding_controller.dart';
import 'package:digi_vegetable/ui/on_boarding/helper/intro_bottom_button.dart';
import 'package:digi_vegetable/ui/on_boarding/helper/intro_page_view.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/app_string.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../utils/theme/text_styles.dart';

class OnBoarding extends ConsumerWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        actions: [
          GestureDetector(
              onTap: () {
                ref.watch(onBoardingController).skipButton(context);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Text(
                  ref.watch(appStringController).skipKey,
                  style: TextStyles.w400
                      .copyWith(fontSize: 18, color: AppColors.black),
                ),
              ))
        ],
      ),
      body: _bodyWidget,
    );
  }

  get _bodyWidget => Consumer(
        builder: (context, ref, child) {
          final onBoardWatch = ref.watch(onBoardingController);
          final appStringWatch = ref.watch(appStringController);
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: PageView(
                    controller: onBoardWatch.pageController,
                    onPageChanged:(val){
                      onBoardWatch.onPageChange(val);
                    },
                    children:  [
                      IntroPageView(model: (
                      img: AppAssets.onBoardImg1,
                      title: appStringWatch.onBoardTitle1,
                      subtile: appStringWatch.onBoardSubtitle1
                      )),
                      IntroPageView(model: (
                      img: AppAssets.onBoardImg2,
                      title: appStringWatch.onBoardTitle2,
                      subtile: appStringWatch.onBoardSubtitle2
                      )),
                      IntroPageView(model: (
                      img: AppAssets.onBoardImg3,
                      title: appStringWatch.onBoardTitle3,
                      subtile: appStringWatch.onBoardSubtitle3
                      )),
                    ],
                  ),
                ),
                const IntroBottomButton(),
              ],
            ),
          );
        },
      );
}
