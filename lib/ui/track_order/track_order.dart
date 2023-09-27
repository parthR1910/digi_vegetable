import 'package:digi_vegetable/ui/track_order/helper/track_order_appbar.dart';
import 'package:digi_vegetable/ui/track_order/helper/track_order_status_details.dart';
import 'package:digi_vegetable/ui/track_order/helper/track_order_tile.dart';
import 'package:digi_vegetable/ui/track_order/helper/track_order_tracker.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../utils/theme/app_colors.dart';
import '../utils/theme/text_styles.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TrackOrderAppBar().paddingOnly(left: 16.w,right: 16.w,bottom: 5.h),
            Expanded(
              child: SingleChildScrollView(
                child:   Column(
                  children: [
                    const TrackOrderTile(img: AppAssets.ginGerImg, name: "Arabic Ginger", status: "In Delivery", price: 380.00),
                    const TrackOrderTracker(),
                    Text("Packets in Delivery",style: TextStyles.w700.copyWith(fontSize: 16.sp,color: AppColors.black),).paddingVertical(10.h),
                    Divider(color: Colors.grey.shade400,thickness: 1,),
                    const TrackOrderStatusDetails()
                  ]
                ).paddingVertical(10.h),
              ),
            )
          ],
        ),
      ),
    );
  }
}
