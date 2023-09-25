import 'package:digi_vegetable/ui/check_out/helper/check_out_bottom_bar.dart';
import 'package:digi_vegetable/ui/check_out/helper/check_out_choose_shipping.dart';
import 'package:digi_vegetable/ui/check_out/helper/check_out_items.dart';
import 'package:digi_vegetable/ui/check_out/helper/check_out_shipping_address.dart';
import 'package:digi_vegetable/ui/check_out/helper/check_out_total_data.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../utils/theme/theme.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const CheckOutBottomBar(),
        body: Column(
          children: [
            const CommonAppbar(title: "Check Out",),
              Expanded(child:
              SingleChildScrollView(
                child: Column(
                  children: [
                    const CheckOutShippingAddress(),
                    SizedBox(height: 8.h,),
                    Divider(height: 6.h,color: Colors.grey.shade400 ,),
                    SizedBox(height: 8.h,),
                    const CheckOutItems(),
                    SizedBox(height: 10.h,),
                    const CheckOutChooseShipping(),
                    SizedBox(height: 10.h,),
                    const CheckOutTotalData()
                  ],
                ).paddingSymmetric(horizontal: 16.w,vertical: 10.h),
              ))
          ],
        ),
      ),
    );
  }
}
