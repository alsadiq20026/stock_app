import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:stock_app/view/screen/account.dart';
import 'package:stock_app/view/screen/home.dart';
import 'package:stock_app/view/screen/inventory.dart';
import 'package:stock_app/view/screen/inventoryitemdetails.dart';
import 'package:stock_app/view/screen/settings.dart';

abstract class HomePageController extends GetxController {
  changeSelceted(int selected);
}

class HomePageControllerImp extends HomePageController {
  int? selecteditem;
  Statusrequest statusrequest = Statusrequest.none;
  Dio dio = Dio();

  @override
  changeSelceted(int selected) {
    selecteditem = selected;
    update();
  }

  List<Widget> pages = [
    const Home(),
    const Inventory(),
    const Settings(),
    const Account(),
    const Inventoryitemdetails()
  ];

  @override
  void onInit() {
    selecteditem = 0;
    super.onInit();
  }
}
