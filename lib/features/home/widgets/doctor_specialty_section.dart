import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_section_title.dart';
import 'specialty_item.dart';

class DoctorSpecialtySection extends StatelessWidget {
  const DoctorSpecialtySection({super.key});

  @override
  Widget build(BuildContext context) {
    var list = [
      'General',
      'Neurologic',
      'Pediatric',
      'Radiology',
      'Pediatric',
      'Dermatology',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeSectionTitle(title: 'Doctor Specialty'),
        SizedBox(
            height: 100.h,
            child: ListView.builder(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 0.h : 20.h,
                        // right: index == list.length - 1 ? 20.h : 0.h,
                      ),
                      child: SpecialtyItem(label: list[index]),
                    ))),
      ],
    );
  }
}
