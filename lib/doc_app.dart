import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/constants.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/app_colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'DocDoc',
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute:
            isLoggedInUser ? Routes.homeScreen : Routes.onBoardingScreen,
      ),
    );
  }
}
