import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/specialization_model.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctor_specialty_list_view.dart';
import 'doctors_list_view.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          specializationsLoading: setupLoading,
          specializationsError: setupError,
          specializationsSuccess: setupSuccess,
        );
      },
    );
  }

  Widget setupLoading() => const CircularProgressIndicator();

  Widget setupError(String error) => Text(error);

  Widget setupSuccess(Specializations data) => Expanded(
        child: Column(
          children: [
            DoctorSpecialtyListView(
              specializations: data.specializations,
            ),
            DoctorsListView(
              doctors: data.specializations.firstOrNull?.doctors ?? [],
            ),
          ],
        ),
      );
}
