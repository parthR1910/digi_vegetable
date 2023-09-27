import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';

class ViewOrderDataTable extends StatelessWidget {
  const ViewOrderDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    List<TotalPriceCharge> chargesData = [
      TotalPriceCharge('Amount', 499),
      TotalPriceCharge('Promo',100),
      TotalPriceCharge('Total', 599),
    ];


    List<PaymentMethodDetail> paymentMethodDetail = [
      PaymentMethodDetail('Payment Method', "My E-Wallet"),
      PaymentMethodDetail('Date',"Dec 15, 2024 | 10:00:27 AM"),
      PaymentMethodDetail('Transaction ID', "SK7263727399"),
      PaymentMethodDetail('Status', "Paid"),
    ];
    return Column(
      children: [
        Container(
          padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(color: Colors.grey.shade400, width: 1)
          ),
          child: Table(
            children: List.generate(chargesData.length, (index) {
              final chargeData = chargesData[index];
              return TableRow(
                children: [
                  Text(chargeData.name, style: TextStyles.w400.copyWith(
                      fontSize: 16.sp, color: AppColors.textGreyColor),).paddingVertical(6.h),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("₹${chargeData.price}",
                        style: TextStyles.w400.copyWith(
                            fontSize: 14.sp, color: AppColors.black),)),
                ],
              );
            })
            ,
          ),
        ),
        SizedBox(height: 16.h,),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(color: Colors.grey.shade400, width: 1.5)
          ),
          child: Table(
            children: List.generate(paymentMethodDetail.length, (index) {
              final paymentDetail = paymentMethodDetail[index];
              if(paymentDetail.name == "Transaction ID"){
                return TableRow(
                  children: [
                    Text(paymentDetail.name,style: TextStyles.w400.copyWith(
                        fontSize: 14.sp, color: AppColors.textGreyColor)).paddingVertical(6.h),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(paymentDetail.value,style: TextStyles.w600.copyWith(
                                fontSize: 12.sp, color: AppColors.black)),
                            IconButton(onPressed: (){}, icon:  Icon(Icons.file_copy_sharp,size: 18.sp,)),
                          ],
                        ))
                  ]
                );
              }else if(paymentDetail.name == "Status"){
                return TableRow(
                  children: [
                    Text(paymentDetail.name,style: TextStyles.w400.copyWith(
                        fontSize: 14.sp, color: AppColors.textGreyColor)).paddingVertical(6.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child:Container(
                        padding:EdgeInsets.symmetric(horizontal: 10.w,vertical: 4.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          color: AppColors.primary,
                        ),
                        child: Text(paymentDetail.value,style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.white),),
                      )
                    )
                  ]
                );

              }
              return TableRow(
                children: [
                  Text(paymentDetail.name, style: TextStyles.w400.copyWith(
                      fontSize: 14.sp, color: AppColors.textGreyColor),).paddingVertical(6.h),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("${paymentDetail.value}",
                        style: TextStyles.w700.copyWith(
                            fontSize: 12.sp, color: AppColors.black),)),
                ],
              );
            })
            ,
          ),
        )
      ],
    ).paddingHorizontal(16.w);
  }
}


class TotalPriceCharge {
  final String name;
  final double price;
  TotalPriceCharge(this.name, this.price);
}

class PaymentMethodDetail{
  final String name;
  final dynamic value;
  PaymentMethodDetail(this.name, this.value);
}