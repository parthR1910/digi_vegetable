import 'package:digi_vegetable/frame_work/controller/my_profile_controller/profile_controller/profile_controller.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../utils/theme/app_assets.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class ProfileAppbar extends ConsumerWidget {
  const ProfileAppbar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final profileWatch = ref.watch(profileController);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment:  Alignment.center,
          height: 60.h,
          width: context.screenWidth,
          decoration:  BoxDecoration(
              border: Border.symmetric(vertical: BorderSide.none,horizontal: BorderSide(color: Colors.grey.shade300,width: 1.w))
          ),
          child: Text("My Profile",style: TextStyles.w800.copyWith(fontSize: 22.sp,color: AppColors.black),),
        ),
        Divider(color: Colors.grey.shade200,thickness: 1,).paddingHorizontal(10.w),
        Column(
          children: [
            GestureDetector(
                onTap: () {
                  profileWatch.pickImageFile(context);
                },
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    CircleAvatar(
                      radius: 60.r,
                      backgroundImage: const AssetImage(
                        AppAssets.userImgPlaceholder,
                      ),
                      foregroundImage: profileWatch.selectedImage != null? FileImage(profileWatch.selectedImage!):null,
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundImage: const AssetImage(AppAssets.camaraIcon),
                          ),
                        ))
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Kishor Patel",style: TextStyles.w400.copyWith(fontSize: 14.sp,color:AppColors.black),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.edit))
              ],
            ),
            Text("xyz@gmail.com",style: TextStyles.w400.copyWith(fontSize: 12.sp,color:AppColors.textGreyColor),),
          ],
        )

      ],
    );
  }
}
