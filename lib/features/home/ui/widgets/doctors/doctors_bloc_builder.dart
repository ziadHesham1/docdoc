import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/specialization_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'doctors_list_view.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          doctorsError: setupError,
          doctorsSuccess: setupSuccess,
        );
      },
    );
  }

  Widget setupError() => const Text('No doctors found');

  Widget setupSuccess(List<Doctor> doctors) =>
      DoctorsListView(doctors: doctors);
}
