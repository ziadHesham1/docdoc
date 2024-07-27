import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/sign_up/data/repos/sign_up_repo.dart';
import '../../features/sign_up/logic/signup_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;
setupGetIt() async {
// dio & api service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login repo & cubit
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup repo & cubit
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
