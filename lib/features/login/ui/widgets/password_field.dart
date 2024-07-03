import 'package:doctopia/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: context.read<LoginCubit>().passwordController,  
      obscureText: _obscureText,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        isDense: true,
        hintText: "Password",
        suffix: IconButton(
          onPressed: () => setState(() => _obscureText = !_obscureText),
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
