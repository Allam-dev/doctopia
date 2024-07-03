import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';
@JsonSerializable()
class   LoginResponseBody {
  String? message;
  bool? status;
  int? code;
  @JsonKey(name: "data")
  User? user;

  LoginResponseBody({
    this.message,
    this.status,
    this.code,
    this.user,
  });

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseBodyToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: "username")
  String? name;
  String? token;

  User({
    this.name,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
