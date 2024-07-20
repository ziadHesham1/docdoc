import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helpers/app_assets.dart';
import '../../../core/theming/app_text_styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.docdoc_logo),
        SizedBox(width: 10.w),
        Text(
          'Docdoc',
          style: AppTextStyles.font24BlackW700,
        ),
      ],
    );
  }
}
