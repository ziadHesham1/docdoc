import 'package:docdoc/core/helpers/app_assets.dart';
import 'package:docdoc/core/theming/app_colors.dart';
import 'package:docdoc/core/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppointmentCard extends StatelessWidget {
  const HomeAppointmentCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Appointment',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
          SizedBox(height: 14.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _iconWithText(
                      Icons.calendar_month, 'Sunday, 11 September 2024'),
                  SizedBox(height: 10.h),
                  _iconWithText(Icons.timer, '08:00 - 09:00 AM'),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black87,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(12.r),
                child: const Icon(
                  Icons.call,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            // margin: EdgeInsets.symmetric(vertical: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImageWidget(
                  imageUrl: AppAssets.doctor_image,
                  borderRadius: 120.r,
                  height: 50.h,
                  width: 50.w,
                ),
                SizedBox(width: 10.w),
                Column(
                  children: [
                    Text(
                      'Dr. John Doe',
                      style: TextStyle(
                        fontSize: 16.sp,
                        // color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Dermatologist',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.grey,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(Icons.message_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row _iconWithText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(width: 10.w),
        Text(text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ))
      ],
    );
  }
}
