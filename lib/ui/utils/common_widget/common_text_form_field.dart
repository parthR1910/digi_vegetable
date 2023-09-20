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
  final String? Function(String?)?  validator;
  final TextInputType? keyboardType;
  final TextStyle? suffixStyle;
  final GestureTapCallback? onTap;
  final Function(String)? onChanged;
  final int? maxLength;

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
      this.onTap, this.prefixIcon, this.onChanged, this.maxLength, this.fillColor});

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
      style: TextStyles.w500.copyWith(color: AppColors.black, fontSize: 16.sp),
      decoration: InputDecoration(
        counterText: "",
        filled: true,
        hintText: hintText,
        hintStyle: hintStyle ??
            TextStyles.w500.copyWith(
                fontSize: fontSize ?? 16.sp, color: AppColors.textGreyColor),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 16.w, top: 15.h, bottom: 15.h),
          child: suffixIcon,
        ),
        suffixStyle: suffixStyle ??
            TextStyles.w500.copyWith(fontSize: 16.sp, color: AppColors.primary),
        prefixIcon: prefixIcon,
        fillColor:fillColor?? AppColors.textFieldBackgroundColor,
        contentPadding: EdgeInsets.only(left: 16.w, top: 16.h, bottom: 15.h),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
                color: AppColors.textFieldBorderColor, width: 1.0)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
                color: AppColors.textFieldBorderColor, width: 1.0)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.red, width: 1.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.red, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
                color: AppColors.textFieldBorderColor, width: 1.0)),
      ),
    );
  }
}
