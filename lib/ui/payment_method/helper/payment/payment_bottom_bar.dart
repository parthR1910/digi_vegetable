import 'package:digi_vegetable/ui/payment_method/helper/payment/payment_success_dialog.dart';

import '../../../utils/common_widget/common_button.dart';
import '../../../utils/theme/theme.dart';

class PaymentBottomBar extends StatelessWidget {
  const PaymentBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 16.h),
        height: kBottomNavigationBarHeight + 30.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400,width: 1.5.w),
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
        child: CommonButton(onTap: (){
          showGeneralDialog(
            barrierDismissible: true,
            barrierLabel: "",
            context: context, pageBuilder: (context, animation, secondaryAnimation) {
            return const Dialog(
              child: PaymentSuccessDialog(),
            );
          },);
        },btnText: "Apply",height: 50,)
    );
  }
}
