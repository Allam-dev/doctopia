import 'package:doctopia/core/ui/assets/assets.gen.dart';
import 'package:doctopia/core/ui/theming/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Assets.images.logoWithLowOpacity.svg(),
        Positioned(
          right: 0,
          bottom: 0,
          left: 0,
          child: Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.1, 0.7],
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
              ),
            ),
            child: Assets.images.onboardingDoctor.image(),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32Blue700Weight,
          ),
        ),
      ],
    );
  }
}
