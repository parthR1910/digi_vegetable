import 'package:digi_vegetable/ui/my_order/helper/my_order_product_tile.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_text_form_field.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../utils/theme/theme.dart';

class CompleteOrderReview extends ConsumerWidget {
  const CompleteOrderReview({super.key});
  // final ProductData product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomSheet(
      backgroundColor: Colors.white,
      elevation: 0,
      enableDrag: false,
      showDragHandle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
        side: const BorderSide(color: Colors.grey),
      ),
      onClosing: () {},
      onDragStart: (details) {
        context.pop();
      },
      builder: (context) {
        return Container(
          width: context.screenWidth,
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Leave a Review',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                ).marginOnly(bottom: 12.h),
                Divider(
                  color: Colors.grey.shade200,
                ).marginSymmetric(horizontal: 8.w),
                MyOrderProductTile(
                    img: AppAssets.ginGerImg,
                    name: "Arabic Ginger",
                    kg: 10.toString(),
                    status: "completed",
                    price: 568,
                    btnTxt: "",
                    onBtnTap: () {}),
                Divider(
                  color: Colors.grey.shade200,
                ).marginSymmetric(horizontal: 10.w),
                Text(
                  'How is your Order?',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w800),
                ).marginOnly(bottom: 10.h),
                Text(
                  'Please give your rating & also your review',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star_rounded,
                    color: context.colorScheme.primary,
                  ),
                  onRatingUpdate: (rating) {
                    // print(rating);
                  },
                ).marginSymmetric(vertical: 5.h),
                CommonTextFormField(
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.image_outlined),
                      color: const Color(0xFFffccac)),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                  hintText: "Review",
                  customBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(color: Color(0xFFffccac))),
                ).paddingVertical(16.h),
                Divider(
                  color: Colors.grey.shade200,
                ).marginSymmetric(horizontal: 10.w),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 18.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                side: BorderSide(
                                    color: context.colorScheme.primary)),
                            backgroundColor: Colors.white),
                        onPressed: context.pop,
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: context.colorScheme.primary,
                              fontSize: 14.sp),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 18.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            backgroundColor: context.colorScheme.primary),
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: 'Review Submitted',
                              gravity: ToastGravity.CENTER,
                              backgroundColor: context.colorScheme.primary,
                              textColor: Colors.white);
                          context.pop();
                        },
                        child: Text(
                          "Submit!",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ],
                ).marginOnly(bottom: 10.h)
              ],
            ),
          ),
        );
      },
    );
  }
}
