import 'package:doctopia/core/ui/assets/assets.gen.dart';
import 'package:doctopia/core/ui/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.images.logo.svg(width: 28.w),
        SizedBox(width: 3.w,),
        Text(
          'Doctopia',
          style: TextStyles.font24Black700Weight,
        ),
      ],
    );
  }
}
