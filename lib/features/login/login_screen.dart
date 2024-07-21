import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/app_colors.dart';
import '../../core/theming/app_text_styles.dart';
import '../../core/widgets/app_check_box.dart';
import 'widgets/login_form.dart';
import 'widgets/signup_text_button.dart';
import 'widgets/terms_and_conditions_widget.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
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
                const LoginForm(),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppCheckBox(
                      label: 'Remember me',
                      onChanged: (value) {},
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.primary,
                      ),
                      child: Text(
                        'Forgot Password?',
                        style: AppTextStyles.font12Primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                const TermsAndConditionsWidget(),
                const SignupTextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
