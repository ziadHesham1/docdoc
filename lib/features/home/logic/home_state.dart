import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specialization_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = Loading;
  // specializations

  const factory HomeState.specializationsSuccess(
      List<Specialization> specializations) = SpecializationsSuccess;

  const factory HomeState.specializationsError({required String error}) =
      SpecializationsError;
// doctor
//success
  const factory HomeState.doctorsSuccess(List<Doctor> doctors) = DoctorsSuccess;

//error
  const factory HomeState.doctorsError({required String error}) = DoctorsError;
}
