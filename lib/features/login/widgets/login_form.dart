import 'package:docdoc/features/login/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/fields/app_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        SizedBox(height: 30.h),
        const AppTextFormField(hintText: 'Email'),
        SizedBox(height: 16.h),
        const PasswordTextFormField(),
      ],
    ));
  }
}
