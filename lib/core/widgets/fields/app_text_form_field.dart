import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/app_colors.dart';
import '../../theming/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Function(String?)? onSaved;
  final EdgeInsetsGeometry? contentPadding;
  final BorderRadius? borderRadius;
  final BorderSide? enabledBorderSide;
  final BorderSide? focusedBorderSide;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Widget? suffixIcon;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.borderRadius,
    this.enabledBorderSide,
    this.focusedBorderSide,
    this.hintStyle,
    this.textStyle,
    this.suffixIcon,
    this.obscureText = false,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16.r),
          borderSide: enabledBorderSide ??
              const BorderSide(color: AppColors.grey30, width: 1.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16.r),
          borderSide: focusedBorderSide ??
              const BorderSide(color: AppColors.primary, width: 1.3),
        ),
        hintText: hintText,
        hintStyle: hintStyle ?? AppTextStyles.font14Grey50,
        suffixIcon: suffixIcon,
      ),
      onSaved: onSaved,
      obscureText: obscureText,
      style: textStyle ?? AppTextStyles.font14DarkBlueW500,
    );
  }
}
