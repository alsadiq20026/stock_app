import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:stock_app/controller/inventory_controller.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:stock_app/link_api.dart';

abstract class ItemdetailsController extends GetxController {
  getdetails();
}

class ItemdetailsControllerImp extends ItemdetailsController {
  String? selecteditemid;
  List addedoper = [];
  List outedoper = [];
  Dio dio = Dio();
  Statusrequest statusrequest = Statusrequest.none;
  int selected = 0;
  List operations = [];
  int? totquantity;
  InventoryControllerImp controllerImp = Get.find();

  @override
  void onInit() {
    selecteditemid = controllerImp.selecteditemid;
    getdetails();
    super.onInit();
  }

  @override
  getdetails() async {
    statusrequest = Statusrequest.loading;
    var response = await dio.get(
      "${AppLink.getitemdetails}/$selecteditemid",
      options: Options(contentType: "application/json"),
    );
    if (response.statusCode == 200) {
      operations.assignAll(response.data['operation']);
      statusrequest = Statusrequest.success;
      update();
    }
  }
}
