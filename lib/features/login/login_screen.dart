import 'package:docdoc/features/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/app_constants.dart';
import '../../core/theming/app_text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.horizontalScreenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: AppTextStyles.font24BlueW700,
                ),
                SizedBox(height: 10.h),
                Text(
                  "We're excited to have you back, "
                  "can't wait to see what you've been up to since you last logged in.",
                  style: AppTextStyles.font13Grey,
                ),
                const LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
