import 'package:flutter/services.dart';

import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import '../theme/theme.dart';

class CommonTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final double? fontSize;
  final bool readOnly;
  final bool? obscureText;
  final Color? fillColor;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextStyle? suffixStyle;
  final GestureTapCallback? onTap;
  final Function(String)? onChanged;
  final int? maxLength;
  final InputBorder? customBorder;
  final EdgeInsetsGeometry? contentPadding;

  const CommonTextFormField(
      {super.key,
      this.hintText,
      this.suffixIcon,
      this.hintStyle,
      this.fontSize,
      this.readOnly = false,
      this.obscureText = false,
      this.controller,
      this.focusNode,
      this.inputFormatters,
      this.keyboardType,
      this.suffixStyle,
      this.validator,
      this.onTap,
      this.prefixIcon,
      this.onChanged,
      this.maxLength,
      this.fillColor,
      this.customBorder,
      this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      readOnly: readOnly,
      controller: controller,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      obscuringCharacter: "*",
      onTap: onTap,
      validator: validator,
      obscureText: obscureText!,
      style: TextStyles.w400.copyWith(color: AppColors.black, fontSize: 15.sp),
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        counterText: "",
        filled: true,
        hintText: hintText,
        hintStyle: hintStyle ??
            TextStyles.w500.copyWith(
                fontSize: fontSize ?? 14.sp, color: AppColors.textGreyColor),
        suffixIcon: Padding(
          padding: EdgeInsets.only(
            right: 10.w,
          ),
          child: suffixIcon,
        ),
        suffixStyle: suffixStyle ??
            TextStyles.w500.copyWith(fontSize: 16.sp, color: AppColors.primary),
        prefixIcon: prefixIcon,
        fillColor: fillColor ?? AppColors.textFieldBackgroundColor,
        border: customBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.textFieldBorderColor, width: 1.0)),
        enabledBorder: customBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.textFieldBorderColor, width: 1.0)),
        disabledBorder: customBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.textFieldBorderColor, width: 1.0)),
        errorBorder: customBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.red, width: 1.0)),
        focusedErrorBorder: customBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.red, width: 1.0)),
        focusedBorder: customBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: AppColors.textFieldBorderColor, width: 1.0)),
      ),
    );
  }
}
