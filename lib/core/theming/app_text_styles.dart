import 'package:flutter/material.dart';

import 'package:docdoc/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static final TextStyle font24BlackW700 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle font32BlueW700 = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle font24BlueW700 = TextStyle(
    fontSize: 24.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle font13Grey = TextStyle(
    fontSize: 13.sp,
    color: AppColors.grey,
  );
  static final TextStyle font14DarkBlueW500 = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle font14Grey50 = TextStyle(
    color: AppColors.grey50,
    fontSize: 14.sp,
  );
}
