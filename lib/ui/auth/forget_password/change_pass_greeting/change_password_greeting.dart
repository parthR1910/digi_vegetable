
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_button.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../utils/theme/app_assets.dart';

class PasswordChangeGreeting extends ConsumerWidget {
  const PasswordChangeGreeting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: Image.asset(AppAssets.successIcon),
            ),
            SizedBox(height: 30.h),
            Text(
              'Password Changed',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15.h),
            Text(
              'Your password has been changed \nsuccessfully',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
            SizedBox(height: 30.h),
            CommonButton(
                width: 300.w,
                height: 55.h,
                fontSize: 17.sp,
                onTap: () {
                  context.pushAndRemoveUntilNamed(AppRoute.login);
                },
                btnText: 'Back To Login')
          ],
        ).paddingHorizontal(20.w),
      ),
    );
  }
}
