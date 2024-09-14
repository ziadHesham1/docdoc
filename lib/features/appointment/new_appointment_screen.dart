import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'models/appointment_info.dart';
import 'widgets/available_appointments.dart';
import 'widgets/booking_payment_widget.dart';
import 'widgets/booking_progress_widget.dart';
import 'widgets/booking_summery_widget.dart';

class NewAppointmentScreen extends StatefulWidget {
  const NewAppointmentScreen({super.key});

  @override
  State<NewAppointmentScreen> createState() => _NewAppointmentScreenState();
}

class _NewAppointmentScreenState extends State<NewAppointmentScreen> {
  AppointmentInfo? _selectedAppointment;
  int _processIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Appointment'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            SizedBox(
              height: 100.h,
              child: BookingProcessWidget(
                processIndex: _processIndex,
                onConnectorTap: (index) {
                  setState(() {
                    _processIndex = index;
                  });
                },
              ),
            ),
            if (_processIndex == 0)
              AvailableAppointments(
                onAppointmentSelected: (selectedAppointment) {
                  setState(() {
                    _selectedAppointment = selectedAppointment;
                    // make sure the payment screen is shown only when there is a selected appointment
                    if (_selectedAppointment != null) {
                      _processIndex = 1;
                    }
                  });
                },
              ),
            if (_processIndex == 1)
              BookingPaymentWidget(
                selectedAppointment: _selectedAppointment!,
              ),
            if (_processIndex == 2) const BookingSummeryWidget(),
          ],
        ),
      ),
    );
  }
}
