import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:stock_app/link_api.dart';

abstract class AdditemController extends GetxController {
  additem();
  getcategory();
}

class AdditemControllerImp extends AdditemController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController size = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController category = TextEditingController();
  Statusrequest statusrequest = Statusrequest.none;
  Dio dio = Dio();
  List stocks = [];
  @override
  additem() async {
    if (formstate.currentState!.validate()) {
      statusrequest = Statusrequest.loading;
      var response = await dio.post(
        AppLink.additem,
        data: {
          "category": category.text.toString() == "Tires"
              ? stocks[0]['_id']
              : stocks[1]['_id'],
          "size": size.text.toString(),
          "quantity": quantity.text.toString()
        },
        options: Options(contentType: "application/json"),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.snackbar("Added Succeffully", "items added succeffuly");
        Get.offNamed("homepage");
        statusrequest = Statusrequest.success;

        update();
      } else {
        Get.defaultDialog(title: "Add field");
      }
    }
  }

  @override
  getcategory() async {
    statusrequest = Statusrequest.loading;
    var response = await dio.get(
      AppLink.getstocks,
      options: Options(contentType: "application/json"),
    );
    if (response.statusCode == 200) {
      stocks.assignAll(response.data['stocks']);
      statusrequest = Statusrequest.success;
      update();
    } else {
      Get.defaultDialog(title: "error");
    }
  }

  @override
  void onInit() {
    getcategory();
    super.onInit();
  }
}
