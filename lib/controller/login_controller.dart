import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/link_api.dart';

abstract class LoginController extends GetxController {
  login();
}

class LoginControllerImp extends LoginController {
  TextEditingController email = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  Dio dio = Dio();

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      var response = await dio.post(AppLink.login,
          options: Options(contentType: "application/json"),
          data: {"email": email.text.toString()});
      if (response.statusCode == 200) {
        Get.toNamed("authcode", arguments: email.text.toString());
      } else {
        Get.defaultDialog(title: "Auth faild");
      }
    }
  }
}
