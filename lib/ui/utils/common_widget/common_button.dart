import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/text_styles.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class CommonButton extends StatelessWidget {
  final Function() onTap;
  final String btnText;
  final Color? txtColor;
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? fontSize;
  final Color? backgroundColor;
  final BoxBorder? border;
  final bool fittedWidth;
  final EdgeInsetsGeometry? padding;

  const CommonButton({super.key, required this.onTap, required this.btnText, this.txtColor, this.height, this.width, this.borderRadius, this.fontSize, this.backgroundColor, this.border,this.fittedWidth = false, this.padding});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius:  BorderRadius.circular(borderRadius??16.r),
      onTap:onTap,
      child: Ink(
        height:height?? 50.h,
        padding: padding,
        width:fittedWidth? null: width?? context.screenWidth,
        decoration: BoxDecoration(
            color:backgroundColor?? AppColors.primary,
            borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
            border: border
        ),
        child: Container(
           alignment: Alignment.center,
          child: Text(btnText, style: TextStyles.w600.copyWith(
              fontSize:fontSize?? 18, color:txtColor?? AppColors.white),),
        ),
      ),
    );
  }
}
