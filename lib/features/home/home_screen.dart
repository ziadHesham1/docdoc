import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_specialty_section.dart';
import 'widgets/find_near_by_doctor_card.dart';
import 'widgets/home_appbar.dart';
import 'widgets/recommended_doctor_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HomeAppBar(),
                SizedBox(height: 25.h),
                const FindNearByDoctorCard(),
                SizedBox(height: 20.h),
                const DoctorSpecialtySection(),
                SizedBox(height: 20.h),
                const RecommendedDoctorSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
