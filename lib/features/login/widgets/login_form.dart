import 'package:docdoc/features/login/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_elevated_button.dart';
import '../../../core/widgets/fields/app_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 30.h),
          const AppTextFormField(hintText: 'Email'),
          SizedBox(height: 16.h),
          const PasswordTextFormField(),
          SizedBox(height: 30.h),
          AppElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
            label: 'Login',
          )
        ],
      ),
    );
  }
}
