import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/app_constants.dart';
import '../../core/theming/text_styles.dart';

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
            padding: AppConstants.screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24Blue700Weight,
                ),
                SizedBox(height: 10.h),
                Text(
                  "We're excited to have you back, "
                  "can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font13ColorGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
