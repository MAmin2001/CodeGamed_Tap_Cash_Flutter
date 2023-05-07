class CashRegisterErrorModel {
  String? message;
  Data? data;

  CashRegisterErrorModel({this.message, this.data});

  CashRegisterErrorModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }


}

class Data {
  Errors? errors;

  Data({this.errors});

  Data.fromJson(Map<String, dynamic> json) {
    errors =
    json['errors'] != null ? new Errors.fromJson(json['errors']) : null;
  }

}

class Errors {
  List<String>? phoneNumber;

  Errors({this.phoneNumber});

  Errors.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phone_number'].cast<String>();
  }

}