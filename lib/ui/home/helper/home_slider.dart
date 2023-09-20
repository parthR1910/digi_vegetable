import 'package:carousel_slider/carousel_slider.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {

   List<String> sliderImages = [
      AppAssets.sliderImg1,
      AppAssets.sliderImg1,
      AppAssets.sliderImg1,
      AppAssets.sliderImg1,
    ];
    return CarouselSlider.builder(itemCount: sliderImages.length, itemBuilder: (context, index, realIndex) {
      final image = sliderImages[index];
      return Container(
        height: context.screenHeight * 0.32,
        width: context.screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image,),
          )
        ),
      );
    }, options: CarouselOptions(
      viewportFraction: 1,
        height: 240,
        enlargeCenterPage: true,
        autoPlay: true,
        initialPage: 0,
        aspectRatio: 0.8,
        autoPlayCurve: Curves.fastOutSlowIn)
    );
  }
}
