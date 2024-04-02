import 'package:doctopia/core/routing/app_router.dart';
import 'package:doctopia/core/routing/routers.dart';
import 'package:doctopia/core/ui/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        initialRoute: Routes.onBoardingRoute,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          primaryColor: ColorManager.primary,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
