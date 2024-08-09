import 'package:docdoc/core/networking/api_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_error_handler/api_error_handler.dart';
import '../data/models/specialization_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  Future<void> getSpecializations() async {
    emit(const HomeState.loading());
    ApiResult<Specializations> result = await homeRepo.getSpecializations();
    result.when(
      success: (Specializations data) => emit(
        HomeState.specializationsSuccess(
          data.specializations,
        ),
      ),
      failure: (ErrorHandler error) => emit(
          HomeState.specializationsError(error: error.apiErrorModel.message)),
    );
  }
}
