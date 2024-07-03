import 'package:doctopia/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: context.read<LoginCubit>().emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: "Email",
      ),
    );
  }
}
