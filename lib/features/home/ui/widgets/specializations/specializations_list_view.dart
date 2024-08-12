import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specialization_model.dart';
import '../../../logic/home_cubit.dart';
import '../home_section_title.dart';
import 'specialty_item.dart';

class SpecializationsListView extends StatefulWidget {
  final List<Specialization> specializationsList;
  const SpecializationsListView({
    super.key,
    required this.specializationsList,
  });

  @override
  State<SpecializationsListView> createState() =>
      _SpecializationsListViewState();
}

class _SpecializationsListViewState extends State<SpecializationsListView> {
  var selectedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeSectionTitle(title: 'Doctor Specialty'),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            itemCount: widget.specializationsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 0.h : 20.h,
              ),
              child: SpecialtyItem(
                specialization: widget.specializationsList[index],
                onTap: () {
                  setState(() {
                    selectedSpecializationIndex = index;
                  });
                  context
                      .read<HomeCubit>()
                      .getDoctorList(widget.specializationsList[index].id);
                },
                isSelected: index == selectedSpecializationIndex,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
