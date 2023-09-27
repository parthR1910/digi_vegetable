import 'package:carousel_slider/carousel_slider.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../../frame_work/controller/product_detail_controller/product_detail_controller.dart';
import '../../utils/theme/app_assets.dart';
import '../../utils/theme/theme.dart';

class ProductDetailSlider extends ConsumerWidget {
  const ProductDetailSlider({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    List<String> sliderImages = [
      AppAssets.ginGerImg,
      AppAssets.ginGerImg,
      AppAssets.ginGerImg,
      AppAssets.ginGerImg,
    ];
    final productDetailWatch = ref.watch(productDetailController);

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CarouselSlider(
                carouselController: productDetailWatch.controller,
                items: List.generate(sliderImages.length, (i) {
                  final img = sliderImages[i];
                  return Container(
                    width: context.screenWidth,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(img))),
                    // child:
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  height: 350,
                  onPageChanged: (index, reason) {
                    productDetailWatch.setPage(index);
                  },
                  viewportFraction: 1.0,
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(sliderImages.length, (index) {
                return productDetailWatch.pageIndex == index
                    ? Container(
                  height: 10.h,
                  width: 30.w,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      borderRadius: BorderRadius.circular(10.r)),
                )
                    : GestureDetector(
                  onTap: () {
                    productDetailWatch.setPage(index);
                  },
                  child: Container(
                    height: 10.h,
                    width: 10.w,
                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 0.5)),
                  ),
                );
              }).toList(),
            ).marginOnly(bottom: 10.h),
          ],
        ),
        CommonAppbar(
          actionButton: [
            IconButton.filledTonal(
                onPressed: () {
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.white)),
                icon:Image.asset(AppAssets.shareIcon,scale: 22,)
            )
          ],
        ).paddingHorizontal(10.w)
      ],
    );
  }
}
