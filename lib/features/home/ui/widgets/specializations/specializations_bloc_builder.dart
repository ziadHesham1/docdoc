import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/specialization_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import '../home_shimmer_loading.dart';
import 'specializations_list_view.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loading: setupLoading,
          specializationsError: setupError,
          specializationsSuccess: setupSuccess,
        );
      },
    );
  }

// create sh
  Widget setupLoading() => const HomeShimmerLoading();

  Widget setupError(String error) => Text(error);

  Widget setupSuccess(List<Specialization> specializations) =>
      SpecializationsListView(specializationsList: specializations);
  // const HomeShimmerLoading();
}
