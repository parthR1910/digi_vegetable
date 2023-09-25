import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../utils/common_widget/common_button.dart';
import '../../utils/theme/theme.dart';

class MyCartBottomBar extends StatelessWidget {
  const MyCartBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
      height: 100.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Price',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ).marginOnly(bottom: 10.h),
              Text('₹ 1,155.00',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ).marginSymmetric(horizontal: 20.w, vertical: 15.h),
          CommonButton(
            onTap: () {},
            btnText: 'Checkout',
            fontSize: 15.sp,
            height: 55.h,
            padding: EdgeInsets.symmetric(
              horizontal: 40.w,
            ),
            fittedWidth: true,
          )
        ],
      ),
    );
  }
}
