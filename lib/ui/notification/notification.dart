import 'package:digi_vegetable/ui/notification/helper/notification_products.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../utils/theme/theme.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: Column(children: [
          const CommonAppbar(title: "Notification"),
           Expanded(child: const NotificationProduct().paddingSymmetric(horizontal: 16.w, vertical: 8.h))
        ],
        ),
      ),
    );
  }
}
