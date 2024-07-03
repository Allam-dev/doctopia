import 'package:bloc/bloc.dart';
import 'package:doctopia/features/login/data/model/login_request_body.dart';
import 'package:doctopia/features/login/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      emit(const LoginState.loading());
      final response = await _loginRepo.login(LoginRequestBody(
          email: emailController.text, password: passwordController.text));
      response.when(
        success: (loginResponseBody) {
          emit(LoginState.success(loginResponseBody));
        },
        failure: (apiError) {
          emit(LoginState.failure(apiError.apiErrorModel.message));
        },
      );
    }
  }
}
