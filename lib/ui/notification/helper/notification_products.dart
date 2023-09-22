import 'package:digi_vegetable/frame_work/controller/notification_controller/notification_controller.dart';
import 'package:digi_vegetable/ui/notification/helper/notification_tile.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';

import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class NotificationProduct extends ConsumerWidget {
  const NotificationProduct({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final notificationWatch = ref.watch(notificationController);
    return ListView(
      children:  [
        Text("Today",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
        ...List.generate(notificationWatch.todayNotifications.length, (index){
          final product = notificationWatch.todayNotifications[index];
          return NotificationTile(notificationData: product);
        }),
        Text("Yesterday",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
        ...List.generate(notificationWatch.yesterdayNotifications.length, (index){
          final product = notificationWatch.yesterdayNotifications[index];
          return NotificationTile(notificationData: product);
        }),
      ],
    );
  }
}
