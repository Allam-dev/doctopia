import 'package:doctopia/features/login/logic/cubit/login_cubit.dart';
import 'package:doctopia/features/login/ui/widgets/email_field.dart';
import 'package:doctopia/features/login/ui/widgets/password_field.dart';
import 'package:doctopia/features/login/ui/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pw_validator/Resource/Strings.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: SingleChildScrollView(
            child: Form(
              key: context.read<LoginCubit>().formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WelcomeText(),
                  Gap(40.h),
                  const EmailField(),
                  const PasswordField(),
                  FlutterPwValidator(
                    width: 400,
                    height: 150,
                    minLength: 8,
                    // lowercaseCharCount: ,
                    onSuccess: () {},
                    controller: context.read<LoginCubit>().passwordController,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<LoginCubit>().login();
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
