import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/app_extensions.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref/shared_pref_helper.dart';
import 'core/helpers/shared_pref/shared_pref_keys.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  await checkIfLoggedInUser();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.accessToken);
  if (!userToken!.isNullOrEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
