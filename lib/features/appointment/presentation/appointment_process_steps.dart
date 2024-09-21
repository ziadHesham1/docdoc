import 'package:docdoc/features/appointment/data/models/appointment_info.dart';
import 'package:docdoc/features/appointment/logic/new_appointment_cubit.dart';
import 'package:docdoc/features/appointment/logic/new_appointment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/available_appointments.dart';
import '../../../core/features/steps_process/layout_steps_model.dart';
import '../../../core/features/steps_process/step_process_interface.dart';

class AppointmentDateAndTimeProcess extends StepProcess {
  @override
  LayoutStepsModel content(BuildContext context) {
    return LayoutStepsModel(
      title: 'Date & Time',
      content: AvailableAppointments(
        onAppointmentSelected: (selectedAppointment) {},
      ),
    );
  }

  @override
  bool onBack(BuildContext context) => false;

  @override
  bool onNext(BuildContext context) {
    var state = context.read<NewAppointmentCubit>().state;
    if (state is AppointmentSelected && state.appointmentInfo!.isValid()) {
      context.read<NewAppointmentCubit>().onAppointmentRequested();
      return true;
    }

    return false;
  }
}

class AppointmentPendingProcess extends StepProcess {
  @override
  LayoutStepsModel content(BuildContext context) {
    return LayoutStepsModel(
      title: 'Pending',
      content: BlocBuilder<NewAppointmentCubit, NewAppointmentState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            paymentRequested: (AppointmentInfo? appointmentInfo) => Column(
              children: [
                const Text('Appointment: '),
                Text('Place: ${appointmentInfo?.place}'),
                Text('startTime: ${appointmentInfo?.startTime}'),
                Text('endTime: ${appointmentInfo?.endTime}'),
                Text('date: ${appointmentInfo?.date}'),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  bool onBack(BuildContext context) => true;

  @override
  bool onNext(BuildContext context) => true;
}

class AppointmentPaymentProcess extends StepProcess {
  @override
  LayoutStepsModel content(BuildContext context) {
    return const LayoutStepsModel(
      title: 'Payment',
      content: Text('Payment'),
    );
  }

  @override
  bool onBack(BuildContext context) => true;

  @override
  bool onNext(BuildContext context) => true;
}

class AppointmentSummaryProcess extends StepProcess {
  @override
  LayoutStepsModel content(BuildContext context) {
    return const LayoutStepsModel(
      title: 'Summary',
      content: Text('Summary'),
    );
  }

  @override
  bool onBack(BuildContext context) => true;

  @override
  bool onNext(BuildContext context) => true;
  @override
  nextText() => 'Done';
}
