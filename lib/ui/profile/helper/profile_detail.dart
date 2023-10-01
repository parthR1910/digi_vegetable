import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/frame_work/controller/profile_controller/profile_controller.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/text_styles.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class ProfileDetail extends ConsumerWidget {
  const ProfileDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileWatch = ref.watch(profileController);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Divider(
          color: Colors.grey.shade200,
          thickness: 1,
        ).paddingHorizontal(10.w),
        Column(
          children: [
            GestureDetector(
                onTap: () {},
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    CircleAvatar(
                      radius: 60.r,
                      backgroundImage: const AssetImage(
                        AppAssets.userImgPlaceholder,
                      ),
                      foregroundImage: profileWatch.selectedImage != null
                          ? FileImage(profileWatch.selectedImage!)
                          : null,
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            profileWatch.pickImageFile(context);
                          },
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundImage:
                                const AssetImage(AppAssets.camaraIcon),
                          ),
                        ))
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kishor Patel",
                  style: TextStyles.w700
                      .copyWith(fontSize: 16.sp, color: AppColors.black),
                ),
                SizedBox(
                  height: 30.h,
                  width: 30.h,
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AppAssets.editProfileIcon,
                        color: AppColors.primary,
                        fit: BoxFit.fill,
                      )),
                )
              ],
            ),
            Text(
              "xyz@gmail.com",
              style: TextStyles.w400
                  .copyWith(fontSize: 14.sp, color: AppColors.textGreyColor),
            ),
          ],
        ),
        Divider(
          color: Colors.grey.shade200,
          thickness: 1,
        ).paddingHorizontal(10.w),
      ],
    );
  }
}
