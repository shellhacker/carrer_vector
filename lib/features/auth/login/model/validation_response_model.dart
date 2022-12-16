class LoginFaildresponse {
  LoginFaildresponse({
    this.code,
    this.message,
    this.data,
  });

  String? code;
  String? message;
  dynamic data;

  factory LoginFaildresponse.fromJson(Map<String, dynamic> json) =>
      LoginFaildresponse(
        code: json["code"],
        message: json["message"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data,
      };
}
