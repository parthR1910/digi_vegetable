import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:digi_vegetable/ui/utils/theme/text_styles.dart';

class TrackOrderTile extends StatelessWidget {
  final String img;
  final String name;
  final String status;
  final double price;

  const TrackOrderTile({super.key, required this.img, required this.name, required this.status, required this.price});

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
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r)
            ),
            child: FittedBox(child: Image.asset(img)),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Type",
                        style: TextStyle(
                            fontSize: 11.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Regular",
                        style: TextStyle(
                            fontSize: 11.sp, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Storage Life",
                        style: TextStyle(
                            fontSize: 11.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "5 Days",
                        style: TextStyle(
                            fontSize: 11.sp, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 3.h),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(4.r)
                ),
                child:  Text("In Delivery",style: TextStyles.w600.copyWith(fontSize: 10.sp,color: Colors.black),),),
              SizedBox(height: 6.h,),
              Text(
                "₹$price.00",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    ).paddingSymmetric(horizontal: 16.w,vertical: 10.h);
  }
}