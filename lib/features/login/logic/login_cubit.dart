import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_error_handler/api_error_handler.dart';
import '../../../core/networking/api_result.dart';
import '../data/models/login_request_body.dart';
import '../data/models/login_response.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepository;
  LoginCubit(this._loginRepository) : super(const LoginState.initial());
  final TextEditingController emailController =
      TextEditingController(text: 'ziad@mail.com');
  final TextEditingController passwordController =
      TextEditingController(text: 'Ziad@1111');
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> login(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final ApiResult<LoginResponse> response =
        await _loginRepository.login(loginRequestBody);
    response.when(
      success: (LoginResponse data) => emit(LoginState.success(data)),
      failure: (ErrorHandler error) => emit(
        LoginState.error(error: error.apiErrorModel.message),
      ),
    );
  }
}
