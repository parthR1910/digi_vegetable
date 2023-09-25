import '../../../my_cart/helper/my_cart_bottom_sheet.dart';
import '../../theme/app_assets.dart';
import '../../theme/text_styles.dart';
import '../../theme/theme.dart';

class CommonProductCartTile extends StatelessWidget {
  final String productImg;
  final String name;
  final String price;
  final String kg;
  final String quantity;
  final void Function()? addQuantity;
  final void Function()? removeQuantity;



  const CommonProductCartTile({super.key, required this.productImg, required this.name, required this.price, required this.kg, this.quantity = "0", this.addQuantity, this.removeQuantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.black12)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: FittedBox(child: Image.asset(productImg)),
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
                          SizedBox(height: 5.h),
                          Text(
                          "$kg kg",
                            style: TextStyle(
                                fontSize: 11.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          // wishListWatch.removeProduct(product);
                          showModalBottomSheet(context: context, builder: (context) {
                            return const MyCartBottomSheet();
                          },);
                        },
                        icon: Image.asset(
                          AppAssets.deleteIcon,
                          height: 20.h,
                          width: 20.w,
                        ))
                  ],
                ),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Container(
                        height: 30.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Colors.grey.shade200
                        ),
                        child: FittedBox(
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: removeQuantity, icon: const Icon(Icons.remove,size: 18,)),
                              Text(quantity,style: TextStyles.w500.copyWith(fontSize: 14.sp,color: Colors.black),),
                              IconButton(onPressed: addQuantity, icon: const Icon(Icons.add,size: 18,))
                            ],
                          ),
                        )
                    )
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
