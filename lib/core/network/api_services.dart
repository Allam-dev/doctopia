import 'package:dio/dio.dart';
import 'package:doctopia/features/login/data/model/login_request_body.dart';
import 'package:doctopia/features/login/data/model/login_response_body.dart';
import 'package:retrofit/retrofit.dart';
import 'api_constants.dart';


part 'api_services.g.dart';
@RestApi(baseUrl: ApiEndpoints.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio) = _ApiServices;

  @POST(ApiEndpoints.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginRequestBody); // <T>
}
