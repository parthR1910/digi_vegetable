import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../ui/utils/theme/app_assets.dart';

final notificationController = ChangeNotifierProvider((ref) => NotificationController());

class NotificationController extends ChangeNotifier{

  List<NotificationData> todayNotifications = [
    NotificationData(img: AppAssets.discountIcon, title: '30% Special Discount!', subtitle: 'Special promotion only valid today')

  ];

  List<NotificationData> yesterdayNotifications = [
    NotificationData(img: AppAssets.creditCardIcon, title: 'Credit Card Connected!', subtitle: 'Credit Card has been linked!'),
    NotificationData(img: AppAssets.locationIcon, title: 'New Services Available!', subtitle: 'Now you can track orders in real time')

  ];
}

class NotificationData{
  String img;
  String title;
  String subtitle;
  NotificationData({required this.img,required this.title,required this.subtitle});
}