import '../../theme/app_assets.dart';
import '../../theme/app_colors.dart';
import '../../theme/text_styles.dart';
import '../../theme/theme.dart';

class CommonAppTile extends StatelessWidget {
  final String leadingImg;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final void Function()? onTap;
  const CommonAppTile({super.key, required this.leadingImg, required this.title, this.subtitle, this.trailing, this.onTap});

  @override
  Widget build(BuildContext context) {
    return         ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 10.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r,),side: BorderSide(color: Colors.grey.shade400,width: 1.2)),
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        radius: 25,
        child:CircleAvatar(
          radius: 18,
          backgroundColor: AppColors.primary,
          child:Image.asset(leadingImg,scale: 20,),
        ),
      ),
      title: Text(title,style: TextStyles.w500.copyWith(fontSize: 14.sp,color: AppColors.black),),
      subtitle: subtitle !=null? Text(subtitle!,style: TextStyles.w500.copyWith(fontSize: 12.sp,color: AppColors.textGreyColor),):null,
      trailing: trailing,
    )
    ;
  }
}
