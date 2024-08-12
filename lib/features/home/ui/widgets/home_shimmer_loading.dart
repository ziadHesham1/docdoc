import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_shimmer_widgets.dart';
import 'home_section_title.dart';

class HomeShimmerLoading extends StatelessWidget {
  const HomeShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const HomeSectionTitle(title: 'Doctor Specialty'),
          SizedBox(height: 20.h),
          SizedBox(
            height: 100.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        CircleShimmerItem(height: 56.h, width: 56.w),
                        SizedBox(height: 10.h),
                        TextShimmerWidget(height: 14.h, width: 50.w),
                      ],
                    ),
                  ],
                );
              },
              itemCount: 10,
            ),
          ),
          // doctors shimmer
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const RectangleShimmerWidget(),
                    SizedBox(width: 10.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextShimmerWidget(
                          height: 20.h,
                          width: 170.w,
                          padding: EdgeInsets.symmetric(vertical: 4.h),
                        ),
                        TextShimmerWidget(
                          height: 15.h,
                          width: 150.w,
                          padding: EdgeInsets.symmetric(vertical: 4.h),
                        ),
                        TextShimmerWidget(
                          height: 15.h,
                          width: 150.w,
                          padding: EdgeInsets.symmetric(vertical: 4.h),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
