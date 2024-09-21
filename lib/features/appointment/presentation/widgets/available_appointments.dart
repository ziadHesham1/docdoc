import 'package:docdoc/features/appointment/logic/new_appointment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/appointment_info.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChooseDate(onDateSelected: (date) {
          appointmentInfo = appointmentInfo.copyWith(date: date.toString());
          context
              .read<NewAppointmentCubit>()
              .onAppointmentSelected(appointmentInfo: appointmentInfo);
        }),
        SizedBox(height: 40.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              ChoosePlace(onPlaceSelected: (place) {
                appointmentInfo = appointmentInfo.copyWith(place: place);
                context
                    .read<NewAppointmentCubit>()
                    .onAppointmentSelected(appointmentInfo: appointmentInfo);
              }),
              SizedBox(height: 40.h),
              ChooseTime(onTimeSelected: (selectedTime) {
                appointmentInfo =
                    appointmentInfo.copyWith(startTime: selectedTime);
                context
                    .read<NewAppointmentCubit>()
                    .onAppointmentSelected(appointmentInfo: appointmentInfo);
              }),
            ],
          ),
        ),
      ],
    );
  }
}
