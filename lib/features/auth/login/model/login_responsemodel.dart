class LoginResponse {
  LoginResponse({
    this.status,
    this.error,
    this.code,
    this.errorDescription,
    this.tokenType,
    this.iat,
    this.expiresIn,
    this.jwtToken,
  });

  String? status;
  String? error;
  String? code;
  String? errorDescription;
  String? tokenType;
  int? iat;
  int? expiresIn;
  String? jwtToken;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status: json["status"],
        error: json["error"],
        code: json["code"],
        errorDescription: json["error_description"],
        tokenType: json["token_type"],
        iat: json["iat"],
        expiresIn: json["expires_in"],
        jwtToken: json["jwt_token"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "error": error,
        "code": code,
        "error_description": errorDescription,
        "token_type": tokenType,
        "iat": iat,
        "expires_in": expiresIn,
        "jwt_token": jwtToken,
      };
}

class LoginUserModel {
  String userName;
  String password;
  LoginUserModel({required this.userName, required this.password});
  Map<String, dynamic> toJson() => {
        "username": userName,
        "password": password,
        // "jwt_token": jwtToken,
      };
}
