import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/specialization_model.dart';
import 'home_section_title.dart';
import 'specialty_item.dart';

class DoctorSpecialtyListView extends StatelessWidget {
  final List<Specialization> specializations;
  const DoctorSpecialtyListView({super.key, required this.specializations});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeSectionTitle(title: 'Doctor Specialty'),
        SizedBox(
            height: 100.h,
            child: ListView.builder(
                itemCount: specializations.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 0.h : 20.h,
                        // right: index == list.length - 1 ? 20.h : 0.h,
                      ),
                      child:
                          SpecialtyItem(specialization: specializations[index]),
                    ))),
      ],
    );
  }
}
