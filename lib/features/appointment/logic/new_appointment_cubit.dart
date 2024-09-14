import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/appointment_info.dart';
import 'new_appointment_state.dart';

class NewAppointmentCubit extends Cubit<NewAppointmentState> {
  NewAppointmentCubit() : super(const NewAppointmentState.initial());

  onAppointmentSelected({required AppointmentInfo appointmentInfo}) {
    emit(
      NewAppointmentState.appointmentSelected(
        appointmentInfo: appointmentInfo,
      ),
    );
  }

  onAppointmentRequested() {
    if (state is AppointmentSelected) {
      var currentState = (state as AppointmentSelected);
      emit(
        NewAppointmentState.paymentRequested(
          appointmentInfo: currentState.appointmentInfo,
        ),
      );
    }
  }

  onPaymentRequestAccepted() {
    if (state is PaymentRequested) {
      var currentState = (state as PaymentRequested);
      emit(
        NewAppointmentState.paymentRequestAccepted(
          appointmentInfo: currentState.appointmentInfo,
        ),
      );
    }
  }

  onPaymentRequestRejected() {
    if (state is PaymentRequested) {
      var currentState = (state as PaymentRequested);
      emit(
        NewAppointmentState.paymentRequestRejected(
          appointmentInfo: currentState.appointmentInfo,
        ),
      );
    }
  }

  onPaymentSent() {
    if (state is PaymentRequestAccepted) {
      emit(const NewAppointmentState.paymentSent());
    }
  }

  onPaymentConfirmed() {
    if (state is PaymentSent) {
      emit(const NewAppointmentState.paymentConfirmed());
    }
  }

  onPaymentRejected() {
    if (state is PaymentSent) {
      emit(const NewAppointmentState.paymentRejected());
    }
  }
}
