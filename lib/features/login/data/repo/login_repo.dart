import 'package:doctopia/core/network/api_error_handler.dart';
import 'package:doctopia/core/network/api_result.dart';
import 'package:doctopia/core/network/api_services.dart';
import 'package:doctopia/features/login/data/model/login_request_body.dart';
import 'package:doctopia/features/login/data/model/login_response_body.dart';

class LoginRepo {
  final ApiServices _apiServices;
  LoginRepo(this._apiServices);
  Future<ApiResult<LoginResponseBody>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
