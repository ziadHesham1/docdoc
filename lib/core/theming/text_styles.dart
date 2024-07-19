import 'package:flutter/material.dart';

import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static final TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle font32Blue700Weight = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle font24Blue700Weight = TextStyle(
    fontSize: 24.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle font13ColorGrey = TextStyle(
    fontSize: 13.sp,
    color: AppColors.grey,
  );
}
