import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/common_widget/common_button.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';

class TrackOrderAppBar extends StatelessWidget {
  const TrackOrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonAppbar(
      title: "Track Order",
      actionButton: [
        PopupMenuButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r),),
          color: AppColors.white,
          position: PopupMenuPosition.under,
          elevation:  1.0,
          icon: const IconButton.outlined(
            color:  Colors.black,
              onPressed:null,
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black,
              )),
          onSelected: (val){
              showModalBottomSheet(context: context, builder: (context) {
                return BottomSheet(
                  backgroundColor: Colors.white,
                  enableDrag: false,
                  onClosing: (){}, builder: (context) {
                  return Container(
                    alignment: Alignment.center,
                    height: 250.h,
                    width: context.screenWidth,
                    margin: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Text("Are you sure you want to cancel this order?",style: TextStyles.w600.copyWith(fontSize: 18.sp,color: AppColors.black),softWrap: true,textAlign: TextAlign.center).paddingHorizontal(20.w),
                        CommonButton(onTap: (){
                          context.pop();
                        }, btnText: "Order Cancel").paddingOnly(bottom: 18.h)
                      ],
                    ),
                  );
                },);
              },);
          },
          itemBuilder: (context) {
            return [
              PopupMenuItem(value: 1,child: SizedBox(
                width: 150.w,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.cancel_presentation_outlined),
                    SizedBox(width: 5.w,),
                   Text("Cancel Order",style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.black),)
                ],),
              ),),
            ];
          },
        )
      ],
    );
  }
}
