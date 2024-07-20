import 'package:docdoc/core/widgets/fields/app_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppTextFormField(
      hintText: 'Password',
      suffixIcon: Icon(
        Icons.remove_red_eye,
      ),
    );
  }
}
