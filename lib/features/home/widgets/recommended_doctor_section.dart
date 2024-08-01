import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_assets.dart';

class RecommendedDoctorSection extends StatelessWidget {
  const RecommendedDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView.builder(
        itemBuilder: (context, index) => newMethod(),
        itemCount: 6,
      ),
    );
  }

  Widget newMethod() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.doctor_image,
            width: 110.w,
            height: 110.h,
          ),
          SizedBox(width: 20.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Dr. Rary Wighatsvrtbrtbm',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'General | RSUD Gatot Subroto',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  '4.8 (4,279 reviews)',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
