import 'package:digi_vegetable/frame_work/controller/payment_method_controller/payment_method_controller.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import '../../utils/common_widget/common_tiles/common_app_tile.dart';
import '../../utils/theme/app_assets.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class PaymentMethodList extends ConsumerStatefulWidget {
  const PaymentMethodList({super.key});

  @override
  ConsumerState<PaymentMethodList> createState() => _PaymentMethodListState();
}

class _PaymentMethodListState extends ConsumerState<PaymentMethodList> {
  @override
  void initState() {
    super.initState();
    ref.read(paymentMethodController).init();

  }
  @override
  Widget build(BuildContext context,) {
    final paymentMethodWatch = ref.watch(paymentMethodController);
    return Column(
      children: [
        Text("Select the payment method you want to use.",style: TextStyles.w500.copyWith(fontSize: 16.sp,color: AppColors.textGreyColor),),
        Column(
            children: paymentMethodWatch.dummyAddresses.map((e) {
              return Padding(
                padding:  EdgeInsets.only(top: 10.h),
                child: CommonAppTile(
                  onTap: (){
                    paymentMethodWatch.updateSelectAddress(e);
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
                        color: paymentMethodWatch.selectedAddress == e
                            ? context.colorScheme.primary
                            : Colors.white,
                      ),
                    ),
                  ),),
              );
            }).toList()
        )
      ],
    );
  }
}
