import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_elevated_button.dart';
import '../models/appointment_info.dart';
import 'choose_date.dart';
import 'choose_time.dart';
import 'choose_time_period.dart';

class AvailableAppointments extends StatelessWidget {
  final Function(AppointmentInfo selectedAppointment) onAppointmentSelected;
  AvailableAppointments({super.key, required this.onAppointmentSelected});
  AppointmentInfo appointmentInfo = AppointmentInfo(
    date: '10-12-2022',
    endTime: '10:00 AM',
    place: 'Clinic 1',
    startTime: '09:00 AM',
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Column(
        children: [
          ChooseDate(onDateSelected: (date) {
            appointmentInfo = appointmentInfo.copyWith(date: date.toString());
          }),
          SizedBox(height: 40.h),
          ChooseTimePeriod(onTimePeriodSelected: (timePeriod) {}),
          SizedBox(height: 40.h),
          ChooseTime(onTimeSelected: (selectedTime) {}),
          SizedBox(height: 40.h),
          // const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: AppElevatedButton(
              onPressed: () {
                onAppointmentSelected(
                  appointmentInfo,
                );
                // context.pushNamed(Routes.newAppointmentScreen);
              },
              label: 'Make An Appointment',
            ),
          ),
        ],
      ),
    );
  }
}
