import 'package:flutter/material.dart';
import 'package:doctopia/core/ui/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font32Blue700Weight = TextStyle(
    fontSize: 32.sp,
    color: ColorManager.blue,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font15Grey400Weight = TextStyle(
    fontSize: 15.sp,
    color: ColorManager.grey,
    fontWeight: FontWeight.w400,
  );

  static TextStyle font16White600Weight = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
}
