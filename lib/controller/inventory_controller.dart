import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:stock_app/controller/home_controller.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:stock_app/link_api.dart';

abstract class InventoryController extends GetxController {
  changeselected(int ch);
  getitemstock();
}

class InventoryControllerImp extends InventoryController {
  String? selecteditemid;
  Dio dio = Dio();
  Statusrequest statusrequest = Statusrequest.none;
  int selected = 0;
  List items = [];
  int? totquantity;
  HomeControllerImp controllerImp = Get.find();
  @override
  getitemstock() async {
    statusrequest = Statusrequest.loading;
    var respons = await dio.get(
      "${AppLink.getitemstock}/${controllerImp.stocks[selected]['_id']}",
      options: Options(contentType: "application/json"),
    );
    if (respons.statusCode == 200) {
      items = respons.data['items'];
      totquantity = respons.data['totquantity'];
      statusrequest = Statusrequest.success;
      update();
    } else {
      return Get.defaultDialog(title: "faild to fetch data");
    }
  }

  @override
  void onInit() {
    getitemstock();
    super.onInit();
  }

  @override
  changeselected(int ch) {
    selected = ch;
    update();
    getitemstock();
  }
}
