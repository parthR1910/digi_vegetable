import 'package:digi_vegetable/ui/on_boarding/controller/on_boarding_controller.dart';
import 'package:digi_vegetable/ui/on_boarding/helper/intro_bottom_button.dart';
import 'package:digi_vegetable/ui/on_boarding/helper/intro_page_view.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../utils/theme/text_styles.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Text(
                  "Skip",
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
                    children: const [
                      IntroPageView(model: (
                      img: AppAssets.onBoardImg1,
                      title: "Find the item you've been looking for",
                      subtile:
                      "Here you'll see rich varieties of goods, carefully classified for seamless browsing experience."
                      )),
                      IntroPageView(model: (
                      img: AppAssets.onBoardImg2,
                      title: "Get those shopping bags filled",
                      subtile:
                      "Add any item you want to your cart, or save it on your wishlist, so you don't miss it in your future purchases."
                      )),
                      IntroPageView(model: (
                      img: AppAssets.onBoardImg3,
                      title: "Fast & secure payment",
                      subtile:
                      "There are many payment options available for your ease."
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
