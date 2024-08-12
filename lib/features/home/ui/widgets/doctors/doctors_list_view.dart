import 'package:flutter/material.dart';

import '../../../data/models/specialization_model.dart';
import 'doctor_item_widget.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctor> doctors;
  const DoctorsListView({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) =>
            DoctorItemWidget(doctor: doctors[index]),
        itemCount: doctors.length,
      ),
    );
  }
}
