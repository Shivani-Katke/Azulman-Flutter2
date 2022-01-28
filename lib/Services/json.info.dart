import 'dart:convert';

//LoginwithOTP:
LoginwithOtp loginwithOtpFromJson(String str) => LoginwithOtp.fromJson(json.decode(str));

String loginwithOtpToJson(LoginwithOtp data) => json.encode(data.toJson());

class LoginwithOtp {
  LoginwithOtp({
    required this.user,
    required this.deviceName,
    required this.deviceId,
  });

  String user;
  String deviceName;
  String deviceId;

  factory LoginwithOtp.fromJson(Map<String, dynamic> json) => LoginwithOtp(
    user: json["User"],
    deviceName: json["DeviceName"],
    deviceId: json["DeviceID"],
  );

  Map<String, dynamic> toJson() => {
    "User": user,
    "DeviceName": deviceName,
    "DeviceID": deviceId,
  };
}



//VerifyLoginwithOTP:
VerifyLogin verifyLoginFromJson(String str) => VerifyLogin.fromJson(json.decode(str));

String verifyLoginToJson(VerifyLogin data) => json.encode(data.toJson());

class VerifyLogin {
  VerifyLogin({
    required this.user,
    required this.otp,
    required this.deviceName,
    required this.deviceId,
  });

  String user;
  String otp;
  String deviceName;
  String deviceId;

  factory VerifyLogin.fromJson(Map<String, dynamic> json) => VerifyLogin(
    user: json["User"],
    otp: json["OTP"],
    deviceName: json["DeviceName"],
    deviceId: json["DeviceID"],
  );

  Map<String, dynamic> toJson() => {
    "User": user,
    "OTP": otp,
    "DeviceName": deviceName,
    "DeviceID": deviceId,
  };
}


//EmailLoginAPI:
EmailLogin emailLoginFromJson(String str) => EmailLogin.fromJson(json.decode(str));

String emailLoginToJson(EmailLogin data) => json.encode(data.toJson());

class EmailLogin {
  EmailLogin({
    required this.phoneno,
    required this.email,
    required this.deviceId,
    required this.deviceName,
  });

  String phoneno;
  String email;
  String deviceId;
  String deviceName;

  factory EmailLogin.fromJson(Map<String, dynamic> json) => EmailLogin(
    phoneno: json["Phoneno"],
    email: json["Email"],
    deviceId: json["DeviceID"],
    deviceName: json["DeviceName"],
  );

  Map<String, dynamic> toJson() => {
    "Phoneno": phoneno,
    "Email": email,
    "DeviceID": deviceId,
    "DeviceName": deviceName,
  };
}

// Logout Api
Logout logoutFromJson(String str) => Logout.fromJson(json.decode(str));

String logoutToJson(Logout data) => json.encode(data.toJson());

class Logout {
  Logout({
    required this.userId,
  });

  int userId;

  factory Logout.fromJson(Map<String, dynamic> json) => Logout(
    userId: json["UserID"],
  );

  Map<String, dynamic> toJson() => {
    "UserID": userId,
  };
}


//NavBar Side Menu Customer Screen.

UserSideNav userSideNavFromJson(String str) => UserSideNav.fromJson(json.decode(str));

String userSideNavToJson(UserSideNav data) => json.encode(data.toJson());

class UserSideNav {
  UserSideNav({
    required this.user,
  });

  String user;

  factory UserSideNav.fromJson(Map<String, dynamic> json) => UserSideNav(
    user: json["user"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
  };
}
