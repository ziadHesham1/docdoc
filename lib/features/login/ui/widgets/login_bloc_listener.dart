import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_extensions.dart';
import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  final Widget child;
  const LoginBlocListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
                context: context,
                builder: (context) =>
                    const Center(child: CircularProgressIndicator()));
          },
          success: (data) {
            context.pop();
            context.pushReplacementNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: child,
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error.toString(),
          style: AppTextStyles.font15DarkBlueW500,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppTextStyles.font14DarkBlueW500,
            ),
          ),
        ],
      ),
    );
  }
}
