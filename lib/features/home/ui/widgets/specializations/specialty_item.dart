import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../data/models/specialization_model.dart';

class SpecialtyItem extends StatelessWidget {
  final Specialization specialization;
  final bool isSelected;
  final void Function()? onTap;
  const SpecialtyItem({
    super.key,
    required this.specialization,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10.h),
            height: 56.h,
            width: 56.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(
                color: isSelected ? AppColors.darkBlue : AppColors.aliceBlue,
              ),
              color: AppColors.aliceBlue,
            ),
            child: Icon(
              Icons.medical_services_outlined,
              color: AppColors.primary,
              size: isSelected ? 34.h : 32.h,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            specialization.name,
            // font 12
            style: isSelected
                ? AppTextStyles.font13DarkBlueW500
                : AppTextStyles.font12DarkBlue,
          )
        ],
      ),
    );
  }
}
