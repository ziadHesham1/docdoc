import 'package:docdoc/core/helpers/app_extensions.dart';
import 'package:docdoc/core/helpers/constants.dart';
import 'package:docdoc/core/helpers/shared_pref/shared_pref_helper.dart';
import 'package:docdoc/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
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
