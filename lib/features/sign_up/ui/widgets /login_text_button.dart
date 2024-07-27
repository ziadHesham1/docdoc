import 'package:flutter/material.dart';

import '../../../../core/helpers/app_extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_text_styles.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.pushReplacementNamed(Routes.loginScreen);
        },
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Already have an account? ',
                style: AppTextStyles.font12DarkBlue,
              ),
              TextSpan(
                text: 'Login',
                style: AppTextStyles.font12PrimaryW600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
