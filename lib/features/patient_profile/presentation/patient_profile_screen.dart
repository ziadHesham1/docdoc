import 'package:docdoc/core/theming/app_colors.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_assets.dart';
import '../../../core/theming/app_text_styles.dart';

class PatientProfileScreen extends StatelessWidget {
  const PatientProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          surfaceTintColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      AppAssets.profile_image,
                      height: 140.h,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Ziad Hesham',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      '+201116791408',
                      style: AppTextStyles.font14Grey,
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
                // height: 300.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    newMethod(
                      leadingIcon: Icons.person_outline,
                      label: 'Personal Information',
                    ),
                    newMethod(
                      leadingIcon: Icons.credit_card,
                      label: 'Payment Information',
                    ),
                    newMethod(
                      leadingIcon: Icons.settings,
                      label: 'Settings',
                    ),
                    AppTextButton(
                      leadingIcon: const Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      onPressed: () {},
                      label: 'Logout',
                      backgroundColor: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Column newMethod({required IconData leadingIcon, required String label}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            // Icons.person_outline,
            leadingIcon,
            color: AppColors.primary,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.primary,
          ),
          title: Text(
            label,
            style: TextStyle(fontSize: 16.sp),
          ),
        ),
        const Divider(color: AppColors.grey30),
      ],
    );
  }
}
