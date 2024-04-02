import 'package:doctopia/core/ui/theming/text_styles.dart';
import 'package:doctopia/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctopia/features/onboarding/widgets/get_started_button.dart';
import 'package:doctopia/features/onboarding/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.h),
          child: SafeArea(
            child: Column(
              children: [
                const LogoAndName(),
                SizedBox(height: 20.h),
                const DoctorImageAndText(),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  textAlign: TextAlign.center,
                  style: TextStyles.font13Grey400Weight,
                ),
                SizedBox(
                  height: 45.h,
                ),
                const GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
