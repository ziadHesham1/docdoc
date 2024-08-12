import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/app_assets.dart';
import '../../core/widgets/app_elevated_button.dart';
import '../home/data/models/specialization_model.dart';
import '../home/ui/widgets/doctors/doctor_item_widget.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(title: const Text('Doctor Details')),
        body: Column(
          children: [
            DoctorItemWidget(
              doctor: Doctor(
                name: 'Dr. John Doe',
                photo: AppAssets.doctor_image,
                degree: 'MBBS, MD, FRCS',
                phone: '1234567890',
                email: '1LlRd@example.com',
                address: '123 Main St, Anytown, USA',
                appointPrice: 1000,
                city: City(
                  id: 1,
                  name: 'Anytown',
                  governorate: Governorate(id: 1, name: 'name'),
                ),
                description: 'tt',
                endTime: '10:00 AM',
                gender: 'F',
                id: 1,
                startTime: '10:00 AM',
              ),
            ),
            const TabBar(
              tabs: [
                Tab(text: "About"),
                Tab(text: "Location"),
                Tab(text: "Reviews"),
              ],
            ),
            // Tab content
            const Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('About the Doctor')),
                  Center(child: Text('Doctor\'s Location')),
                  Center(child: Text('Reviews')),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: AppElevatedButton(
                onPressed: () {},
                label: 'Make An Appointment',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
