import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/appointment_info.dart';

part 'new_appointment_state.freezed.dart';

@freezed
abstract class NewAppointmentState with _$NewAppointmentState {
  const factory NewAppointmentState.initial() = _Initial;

  const factory NewAppointmentState.loading() = _Loading;
  // ----------------------------------------------

  const factory NewAppointmentState.appointmentSelected(
      {AppointmentInfo? appointmentInfo}) = AppointmentSelected;
  const factory NewAppointmentState.paymentRequested(
      {AppointmentInfo? appointmentInfo}) = PaymentRequested;

  const factory NewAppointmentState.paymentRequestAccepted(
      {AppointmentInfo? appointmentInfo}) = PaymentRequestAccepted;

  const factory NewAppointmentState.paymentRequestRejected(
      {AppointmentInfo? appointmentInfo}) = PaymentRequestRejected;

  const factory NewAppointmentState.paymentSent() = PaymentSent;

  const factory NewAppointmentState.paymentConfirmed() = PaymentConfirmed;

  const factory NewAppointmentState.paymentRejected() = PaymentRejected;
}
