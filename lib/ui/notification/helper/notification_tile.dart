import 'package:digi_vegetable/frame_work/controller/notification_controller/notification_controller.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class NotificationTile extends StatelessWidget {
  final NotificationData notificationData;
  const NotificationTile({super.key, required this.notificationData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.black12)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primary,
            radius: 30,
            child: Image.asset(notificationData.img,scale: 12,),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationData.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.w400.copyWith(fontSize: 14.sp,color: AppColors.black),
                ),
                SizedBox(height: 7.h),
                Row(
                  children: [
                    Text(
                      notificationData.subtitle,
                      style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.textGreyColor),
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
