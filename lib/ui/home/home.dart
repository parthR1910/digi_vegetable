import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/home/helper/home_categoried.dart';
import 'package:digi_vegetable/ui/home/helper/home_most_popular/home_most_popular.dart';
import 'package:digi_vegetable/ui/home/helper/home_new_arrival/home_new_arrival.dart';
import 'package:digi_vegetable/ui/home/helper/home_searchbar.dart';
import 'package:digi_vegetable/ui/home/helper/home_slider.dart';
import 'package:digi_vegetable/ui/home/helper/offerbanners/offer_banners.dart';
import 'package:digi_vegetable/ui/home/helper/top_category/top_category.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';

import '../utils/theme/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Image.asset(AppAssets.appLogo),
        actions: [
          IconButton.filledTonal(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => AppColors.textFieldBackgroundColor),
            ),
              onPressed: (){
              context.pushNamed(AppRoute.wishList);
              },
              // icon: Image.asset(AppAssets.heartIcon)
              icon: const Icon(Icons.favorite_border,size: 28,)
          ),
          SizedBox(width: 3.w,),
          IconButton.filledTonal(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) => AppColors.textFieldBackgroundColor),
              ),
              onPressed: (){
                context.pushNamed(AppRoute.notification);
              }, icon: Image.asset(AppAssets.notificationIcon,height: 28.h,width: 28.w,))
        ],
      ),
      body: _bodyWidget(),
    );
  }
  Widget _bodyWidget(){
    return  const SingleChildScrollView(
      child: Column(
        children: [
          HomeSearchBar(),
          HomeSlider(),
          HomeCategories(),
          HomeMostPopular(),
          TopCategories(),
          OfferBanners(),
          HomeNewArrival()
        ],
      ),
    );
  }
}
