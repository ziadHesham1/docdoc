import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';

class SpecialtyItem extends StatelessWidget {
  final String label;
  const SpecialtyItem({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 10.h),
          height: 56.h,
          width: 56.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            color: AppColors.aliceBlue,
          ),
          child: Icon(
            Icons.medical_services_outlined,
            color: AppColors.primary,
            size: 32.sp,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          label,
          // font 12
          style: TextStyle(fontSize: 12.sp),
        )
      ],
    );
  }
}
