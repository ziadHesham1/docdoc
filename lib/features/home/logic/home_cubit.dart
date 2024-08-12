import 'package:docdoc/core/helpers/app_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../core/networking/api_result.dart';
import '../data/models/specialization_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());
  List<Specialization> specializationsList = [];
  Future<void> getSpecializations() async {
    emit(const HomeState.loading());
    ApiResult<Specializations> result = await homeRepo.getSpecializations();
    result.when(
      success: (Specializations data) {
        specializationsList = data.specializations;
        getDoctorList(specializationsList.first.id);
        emit(HomeState.specializationsSuccess(data.specializations));
      },
      failure: (ErrorHandler error) => emit(
          HomeState.specializationsError(error: error.apiErrorModel.message)),
    );
  }

  getDoctorList(int specializationId) {
    var doctorList = getDoctorListBySpecializationId(specializationId);
    if (doctorList.isNotNullOrEmpty) {
      emit(HomeState.doctorsSuccess(doctorList));
    } else {
      emit(const HomeState.doctorsError(error: 'No doctors found'));
    }
  }

  List<Doctor> getDoctorListBySpecializationId(int specializationId) {
    return specializationsList
        .firstWhere((element) => element.id == specializationId)
        .doctors;
  }
}
