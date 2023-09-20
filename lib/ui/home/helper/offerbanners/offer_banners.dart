import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';

import '../../../utils/theme/theme.dart';

class OfferBanners extends StatelessWidget {
  const OfferBanners({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.h,
          child: Image.asset(AppAssets.offerBanner1),
        ),
        SizedBox(
          height: 200.h,
          child: Image.asset(AppAssets.offerBanner2),
        ),
      ],
    ).paddingSymmetric(horizontal: 16.w,vertical: 10.h);
  }
}
