import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/my_order/helper/my_order_product_tile.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import '../../../utils/theme/theme.dart';

class MyOrderPending extends StatelessWidget {
  const MyOrderPending({super.key});

  @override
  Widget build(BuildContext context) {
    return
        /// no order yet widget
    //   Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Image.asset(AppAssets.emptyNoteImg,height: 300.h,width: 300.w,),
    //     SizedBox(height: 30.h,),
    //     Text("You don't have and order yet",style: TextStyles.w600.copyWith(fontSize: 18.sp,color: AppColors.black),),
    //     SizedBox(height: 10.h,),
    //     Text("You don't have an ongoing orders at this time",style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),)
    //   ],
    // );

    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(6, (index) =>   MyOrderProductTile(btnShow: true,img: AppAssets.ginGerImg, name: "Arabic Ginger", kg: 10.toString(), status: "In Delivery", price: 1700.23, btnTxt: "Track Order", onBtnTap: (){
          context.pushNamed(AppRoute.trackOrder);
        })
        )
      ).paddingHorizontal(16.w),
    );
  }
}
