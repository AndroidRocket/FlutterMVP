// To parse this JSON data, do
//
//     final signupRequest = signupRequestFromJson(jsonString);

import 'dart:convert';

//SignupRequest signupRequestFromJson(String str) {
//  final jsonData = json.decode(str);
//  return SignupRequest.fromJson(jsonData);
//}

String signupRequestToJson(SignInRequest data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class SignInRequest {
  String email;
  String password;
  SignInRequest(this.email,
      this.password);
//  _$fromJson({
//    this.retailerCode,
//    this.customerName,
//    this.amount,
//    this.mobileNo,
//    this.orderId,
//  });
//
//  factory SignupRequest.fromJson(Map<String, dynamic> json) => new SignupRequest(
//    retailerCode: json["retailerCode"],
//    customerName: json["customerName"],
//    amount: json["amount"],
//    mobileNo: json["mobileNo"],
//    orderId: json["orderId"],
//  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
  };
}
