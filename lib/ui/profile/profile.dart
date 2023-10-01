import 'package:digi_vegetable/frame_work/controller/profile_controller/profile_controller.dart';
import 'package:digi_vegetable/ui/profile/helper/profile_appbar.dart';
import 'package:digi_vegetable/ui/profile/helper/profile_detail.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/text_styles.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileWatch = ref.watch(profileController);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            const ProfileAppbar(),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProfileDetail(),
                  ...List.generate(profileWatch.optionList.length, (index) {
                    final option = profileWatch.optionList[index];
                    return ListTile(
                      onTap: () {
                        profileWatch.navigateToOption(context, index);
                      },
                      leading: SizedBox(
                        height: 25.h,
                        width: 30.w,
                        child: option["Icon"],
                      ),
                      title: Text(
                        option["Title"],
                        style: TextStyles.w600
                            .copyWith(fontSize: 16.sp, color: AppColors.black),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.h,
                      ),
                    );
                  })
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
