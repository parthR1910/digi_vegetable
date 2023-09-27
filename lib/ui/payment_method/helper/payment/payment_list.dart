import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';

import '../../../../frame_work/controller/payment_method_controller/payment_controller/payment_controller.dart';
import '../../../utils/common_widget/common_tiles/common_app_tile.dart';
import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/text_styles.dart';
import '../../../utils/theme/theme.dart';

class PaymentList extends ConsumerStatefulWidget {
  const PaymentList({super.key});

  @override
  ConsumerState<PaymentList> createState() => _PaymentListState();
}

class _PaymentListState extends ConsumerState<PaymentList> {


   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(paymentController).init();
  }
  @override
  Widget build(BuildContext context) {
    final paymentWatch = ref.watch(paymentController);

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Select the payment method you want to use.",style: TextStyles.w500.copyWith(fontSize: 16.sp,color: AppColors.textGreyColor),),
          Column(
              children: paymentWatch.paymentList.map((e) {
                return Padding(
                  padding:  EdgeInsets.only(top: 10.h),
                  child: CommonAppTile(
                    backgroundColor: Colors.transparent,
                    onTap: (){
                      paymentWatch.updateSelectedPay(e);
                    },
                    leadingImg: e['img'],
                    title: e['title'].toString(),
                    trailing: Container(
                      height: 20.h,
                      width: 20.w,
                      padding: EdgeInsets.all(1.r),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                              color: context.colorScheme.primary, width: 2.w)),
                      child: Container(
                        height: 16.h,
                        width: 16.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: paymentWatch.selectedPayment == e
                              ? context.colorScheme.primary
                              : Colors.white,
                        ),
                      ),
                    ),),
                );
              }).toList()
          )
        ],
      ),
    );
  }
}
