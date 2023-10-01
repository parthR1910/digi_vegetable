import 'dart:io';

import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../ui/utils/theme/app_assets.dart';

final profileController = ChangeNotifierProvider((ref) => ProfileController());

class ProfileController extends ChangeNotifier {
  File? selectedImage;
  String? fileName;

  pickImageFile(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png']);
    if (result != null) {
      fileName = result.files.single.name;
      selectedImage = File(result.files.single.path!);
      notifyListeners();
    } else {
      Fluttertoast.showToast(msg: "pickImage");
    }
    notifyListeners();
  }

  List<Map<String, dynamic>> optionList = [
    {
      "Icon": Image.asset(
        AppAssets.personIcon,
        color: Colors.black,
      ),
      "Title": "Edit Profile"
    },
    {
      "Icon": Image.asset(
        AppAssets.locationIcon,
        color: Colors.black,
      ),
      "Title": "Address"
    },
    {
      "Icon": Image.asset(
        AppAssets.buyIcon,
        color: Colors.black,
      ),
      "Title": "My Orders "
    },
    {
      "Icon": Image.asset(
        AppAssets.starUnselectedIcon,
        color: Colors.black,
      ),
      "Title": "Most Popular"
    },
    {
      "Icon": Image.asset(
        AppAssets.notificationIcon,
        color: Colors.black,
      ),
      "Title": "Notification"
    },
    {
      "Icon": Image.asset(
        AppAssets.lockIcon,
        color: Colors.black,
      ),
      "Title": "Privacy Policy"
    },
    {
      "Icon": Image.asset(
        AppAssets.infoSquareIcon,
        color: Colors.black,
      ),
      "Title": "Help Center"
    },
    {
      "Icon": Image.asset(
        AppAssets.logoutIcon,
      ),
      "Title": "LogOut"
    },
  ];

  navigateToOption(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.pushNamed(AppRoute.editProfile);
        break;
      case 1:
        context.pushNamed(AppRoute.address);
        break;
      case 2:
        context.pushNamed(AppRoute.myOrders);
        break;
      case 3:
        context.pushNamed(AppRoute.mostPopular);
        break;
      case 4:
        context.pushNamed(AppRoute.profileNotification);
        break;
      case 5:
        context.pushNamed(AppRoute.privacyPolicy);
        break;
      case 6:
        context.pushNamed(AppRoute.helpCenter);
        break;
      case 7:
        showModalBottomSheet(
          context: context,
          builder: (context) => BottomSheet(
            backgroundColor: Colors.white,
            elevation: 0,
            enableDrag: false,
            showDragHandle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
              side: const BorderSide(color: Colors.grey),
            ),
            onClosing: () {},
            onDragStart: (details) {
              context.pop();
            },
            builder: (context) {
              return Container(
                width: context.screenWidth,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Logout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.red),
                      ),
                      Divider(
                        color: Colors.grey.shade200,
                      ).marginSymmetric(horizontal: 8.w),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Please give your rating & also your review',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.symmetric(vertical: 18.h),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.r),
                                      side: BorderSide(
                                          color: context.colorScheme.primary)),
                                  backgroundColor: Colors.white),
                              onPressed: context.pop,
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: context.colorScheme.primary,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.symmetric(vertical: 18.h),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.r)),
                                  backgroundColor: context.colorScheme.primary),
                              onPressed: () {
                                context.pushAndRemoveUntilNamed(AppRoute.login);
                              },
                              child: Text(
                                "Yes, Log out",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                        ],
                      ).marginOnly(bottom: 10.h)
                    ],
                  ),
                ),
              );
            },
          ),
        );
        break;
    }
  }
}
