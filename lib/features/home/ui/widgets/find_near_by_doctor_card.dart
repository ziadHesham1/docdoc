import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/app_elevated_button.dart';

class FindNearByDoctorCard extends StatelessWidget {
  const FindNearByDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.yellow,
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 160.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppAssets.home_card_background),
              fit: BoxFit.cover,
            )),
            child: textAndButton(),
          ),
          Positioned(
            right: 12,
            top: 0,
            child: Image.asset(
              AppAssets.onboarding_doctor,
              height: 200.h,
              // width: 150.w,
            ),
          ),
        ],
      ),
    );
  }

  Widget textAndButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Book and\nschedule with\nnearest doctor',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.h),
          AppElevatedButton(
            height: 38.h,
            width: 120.w,
            backgroundColor: Colors.white,
            textStyle: TextStyle(
              color: AppColors.primary,
              fontSize: 14.sp,
            ),
            borderRadius: 48.r,
            onPressed: () {},
            label: 'Find Nearby',
          ),
        ],
      ),
    );
  }
}
