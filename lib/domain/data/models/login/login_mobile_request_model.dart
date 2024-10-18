import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_mobile_request_model.g.dart';

@JsonSerializable()
class LoginMobileRequestModel {
  @JsonKey(name: "mobile")
  final String mobile;

  const LoginMobileRequestModel({
    required this.mobile,
  });

  factory LoginMobileRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginMobileRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginMobileRequestModelToJson(this);
}
