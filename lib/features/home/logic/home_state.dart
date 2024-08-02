import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specialization_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationsLoading() = SpecializationsLoading;

  const factory HomeState.specializationsSuccess(Specializations data) =
      SpecializationsSuccess;

  const factory HomeState.specializationsError({required String error}) =
      SpecializationsError;
}
