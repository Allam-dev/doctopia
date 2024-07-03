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
          primaryColor: ColorManager.blue,
          scaffoldBackgroundColor: Colors.white,
          // inputDecorationTheme: InputDecorationTheme(
          //   isDense: true,
          //   contentPadding:
          //       EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          //   focusedBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(10.r),
          //     borderSide: const BorderSide(
          //       color: ColorManager.blue,
          //       width: 1.3,
          //     ),
          //   ),
          //   enabledBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(10.r),
          //     borderSide: BorderSide(
          //       color: ColorManager.grey.withOpacity(0.2),
          //       width: 1.3,
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
