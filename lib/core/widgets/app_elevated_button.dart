import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

/// add text color property
class AppElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final String label;
  final double? width;
  final double? height;
  final double? borderRadius;

  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.width,
    this.height,
    this.backgroundColor,
    this.textStyle,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    //Todo:: remove this and use the one in [TextStyles]

    var font16WhiteW700 = TextStyle(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.r)),
        backgroundColor: backgroundColor ?? AppColors.primary,
        minimumSize: getButtonSize(),
      ),
      child: Text(
        label,
        style: textStyle ?? font16WhiteW700,
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
