import 'core/di/dependency_injection.dart';
import 'core/theming/app_colors.dart';
import 'features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/doctor_profile/doctor_profile_screen.dart';
import 'features/home/ui/home_screen.dart';

class AppNavbar extends StatefulWidget {
  const AppNavbar({super.key});

  @override
  State<AppNavbar> createState() => _AppNavbarState();
}

class _AppNavbarState extends State<AppNavbar> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    var screens = [
      BlocProvider(
        create: (context) => getIt<HomeCubit>()..getSpecializations(),
        child: const HomeScreen(),
      ),
      const DoctorProfileScreen(),
      const ProfileScreen(),
    ];
    var tabs = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.medical_information),
        label: 'Doctor Details',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ];
    return Scaffold(
        body: screens[tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tabIndex,
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.primary,
          onTap: (value) {
            setState(() {
              tabIndex = value;
            });
          },
          items: tabs,
        ));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        surfaceTintColor: Colors.white,
      ),
      body: const Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}
