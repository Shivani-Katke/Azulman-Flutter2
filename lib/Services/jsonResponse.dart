import 'dart:convert';

//LoginwithOTP'sResponse:
class LoginResponse {
  LoginResponse({
    required this.flag,
    required this.message
  });

  String flag;
  String message;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      LoginResponse(
          flag: json["flag"],
          message: json["message"]
      );

  Map<String, dynamic> toJson() =>
      {
        "flag": flag,
        "message": message
      };
}



//VerifyLoginwithOTP'sResponse:
class VerifyUser {
  VerifyUser({
    required this.isValidUser,
  });

  String isValidUser;

  factory VerifyUser.fromJson(Map<String, dynamic> json) => VerifyUser(
    isValidUser: json["IsValidUser"],
  );

  Map<String, dynamic> toJson() => {
    "IsValidUser": isValidUser,
  };
}


//EmailLoginapi'sResponse:
EmailLoginResponse emailLoginResponseFromJson(String str) => EmailLoginResponse.fromJson(json.decode(str));

String emailLoginResponseToJson(EmailLoginResponse data) => json.encode(data.toJson());

class EmailLoginResponse {
  EmailLoginResponse({
    required this.isValidUser,
    required this.message,
  });

  String isValidUser;
  String message;

  factory EmailLoginResponse.fromJson(Map<String, dynamic> json) => EmailLoginResponse(
    isValidUser: json["IsValidUser"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "IsValidUser": isValidUser,
    "message": message,
  };
}
