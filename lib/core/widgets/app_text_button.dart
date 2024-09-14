import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

/// Custom TextButton with similar properties as AppElevatedButton
class AppTextButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final String label;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool lightMode;

  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.width,
    this.height,
    this.backgroundColor,
    this.textStyle,
    this.borderRadius,
    this.lightMode = false,
  });

  @override
  Widget build(BuildContext context) {
    var font16WhiteBold = TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );

    var font16PrimaryBold = TextStyle(
      fontSize: 16.sp,
      color: AppColors.primary,
      fontWeight: FontWeight.w700,
    );

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
        ),
        backgroundColor:
            lightMode ? Colors.white : backgroundColor ?? Colors.transparent,
        minimumSize: getButtonSize(),
      ),
      child: Text(
        label,
        style: textStyle ?? (lightMode ? font16PrimaryBold : font16WhiteBold),
      ),
    );
  }

  getButtonSize() {
    if (width != null && height != null) {
      return Size(width!, height!);
    } else if (width == null && height != null) {
      return Size.fromHeight(height!);
    } else if (width != null && height == null) {
      return Size(width!, 56.h);
    } else {
      return Size.fromHeight(56.h);
    }
  }
}
