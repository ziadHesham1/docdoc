import '../../../core/theming/app_colors.dart';
import '../../../core/widgets/fields/app_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  final Function(String?)? onSaved;
  const PasswordTextFormField({
    this.onSaved,
    super.key,
  });

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Password',
      onSaved: widget.onSaved,
      suffixIcon: IconButton(
        style: IconButton.styleFrom(
          foregroundColor: AppColors.primary,
        ),
        onPressed: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
        icon: Icon(
          isObscure ? Icons.visibility_off : Icons.visibility,
        ),
      ),
      obscureText: isObscure,
    );
  }
}
