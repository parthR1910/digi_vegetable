import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:digi_vegetable/ui/utils/theme/text_styles.dart';

import '../../utils/theme/app_colors.dart';

class MyOrderProductTile extends StatelessWidget {
  final String img;
  final String name;
  final String kg;
  final String status;
  final double price;
  final String btnTxt;
  final bool btnShow;
  final Function() onBtnTap;

  const MyOrderProductTile({super.key, required this.img, required this.name, required this.kg, required this.status, required this.price, required this.btnTxt, required this.onBtnTap,this.btnShow =false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.black12)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r)
            ),
            child: FittedBox(child: Image.asset(img)),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            "$kg kg",
                            style: TextStyle(
                                fontSize: 11.sp, fontWeight: FontWeight.w500),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 3.h),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(4.r)
                            ),
                            child:  Text(status,style: TextStyles.w600.copyWith(fontSize: 12.sp,color: Colors.black38),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "₹$price",
                          style: TextStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    if(btnShow)
                      GestureDetector(
                      onTap: onBtnTap,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 3.h),
                        height: 25.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          color: AppColors.primary,
                        ),
                        child: Text(btnTxt,style: TextStyles.w600.copyWith(fontSize: 12.sp,color: AppColors.white),),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
