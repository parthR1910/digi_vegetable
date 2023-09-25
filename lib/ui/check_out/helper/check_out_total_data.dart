import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';

class CheckOutTotalData extends StatelessWidget {
  const CheckOutTotalData({super.key});

  @override
  Widget build(BuildContext context) {
    List<Charges> chargesData = [
      Charges('Amount', 499),
      Charges('Shipping',100),
      Charges('Coupon discount', -00),
      Charges('Total', 599),
    ];
    return Container(
      padding:const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.grey.shade400,width: 1.5)
      ),
      child: Table(
        children: List.generate(chargesData.length, (index) {
          final chargeData = chargesData[index];
          return TableRow(
            children: [
              Text(chargeData.name,style: TextStyles.w400.copyWith(fontSize: 16.sp,color: AppColors.textGreyColor),),
              Align(
                alignment: Alignment.centerRight,
                  child: Text(chargeData.price.toString(),style: TextStyles.w400.copyWith(fontSize: 16.sp,color: AppColors.black),)),
            ],
          );
        })
        ,
      ),
    );
  }
}

class Charges {
  final String name;
  final double price;
  Charges(this.name, this.price);
}