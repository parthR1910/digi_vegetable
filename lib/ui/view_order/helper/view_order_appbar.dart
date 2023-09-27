import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';

class ViewOrderAppBar extends StatelessWidget {
  const ViewOrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonAppbar(
      title: "View Order",
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
          itemBuilder: (context) {
            return [
              PopupMenuItem(value: 1,child: SizedBox(
                width: 170.w,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(AppAssets.sendIcon,scale: 22,),
                    SizedBox(width: 5.w,),
                   Text("Share E-Receipt",style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.black),)
                ],),
              ),),
              PopupMenuItem(value: 1,child: SizedBox(
                width: 170.w,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Image.asset(AppAssets.paperDownloadIcon,scale: 22,),
                  SizedBox(width: 5.w,),
                  Text("Download E-Receipt",style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.black),)
                ],),
              ),),
              PopupMenuItem(value: 1,child: SizedBox(
                width: 170.w,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Image.asset(AppAssets.paperIcon,scale: 22,),
                    SizedBox(width: 5.w,),
                  Text("Print",style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.black),)
                ],),
              ),),
            ];
          },
        )
      ],
    );
  }
}
