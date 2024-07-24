import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'doc_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setupGetIt();

  runApp(DocApp(appRouter: AppRouter()));
}
