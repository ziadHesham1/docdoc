import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'new/home_appointment_card.dart';
import 'widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const HomeAppBar(),
              SizedBox(height: 15.h),
              const HomeAppointmentCard(),
              SizedBox(height: 15.h),
              // const FindNearByDoctorCard(),
              // SizedBox(height: 20.h),
              // const SpecializationsBlocBuilder(),
              // SizedBox(height: 20.h),
              // const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
