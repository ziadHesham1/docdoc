import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class ChooseTimePeriod extends StatefulWidget {
  // onTimePeriodSelected
  final Function(String selectedTimePeriod) onTimePeriodSelected;
  const ChooseTimePeriod({
    super.key,
    required this.onTimePeriodSelected,
  });

  @override
  State<ChooseTimePeriod> createState() => _ChooseTimePeriodState();
}

class _ChooseTimePeriodState extends State<ChooseTimePeriod> {
  String tag = 'Morning';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose Time Period',
          style: AppTextStyles.font16DarkBlueSemiBold,
        ),
        SizedBox(height: 10.h),
        Center(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              color: AppColors.grey30,
            ),
            child: ChipsChoice.single(
              padding: EdgeInsets.zero,
              value: tag,
              onChanged: (val) {
                setState(() => tag = val);
                widget.onTimePeriodSelected(tag);
              },
              choiceItems: ['Morning', 'Afternoon', 'Evening']
                  .map((e) => C2Choice(value: e, label: e))
                  .toList(),
              // choiceCheckmark: true,
              choiceStyle: C2ChipStyle.filled(
                foregroundStyle: AppTextStyles.font14Primary,
                selectedStyle: C2ChipStyle(
                  foregroundStyle: AppTextStyles.font14White,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.r),
                  ),
                  height: 40.h,
                  backgroundColor: AppColors.primary,
                ),
                color: AppColors.grey30,
                borderRadius: BorderRadius.all(
                  Radius.circular(25.r),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
