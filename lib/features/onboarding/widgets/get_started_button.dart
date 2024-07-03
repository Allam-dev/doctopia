import 'package:doctopia/core/extensions/context/navigation.dart';
import 'package:doctopia/core/routing/routers.dart';
import 'package:doctopia/core/ui/theming/colors.dart';
import 'package:doctopia/core/ui/theming/text_styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginRoute);
      },
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, 52),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          ColorManager.blue,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16White600Weight,
      ),
    );
  }
}
