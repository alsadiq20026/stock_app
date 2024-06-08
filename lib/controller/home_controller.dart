import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:stock_app/link_api.dart';

abstract class HomeController extends GetxController {
  getstocks();
}

class HomeControllerImp extends HomeController {
  Dio dio = Dio();
  List stocks = [];
  int? total;
  Statusrequest statusrequest = Statusrequest.none;
  @override
  getstocks() async {
    statusrequest = Statusrequest.loading;
    var response = await dio.get(
      AppLink.getstocks,
      options: Options(contentType: "application/json"),
    );
    if (response.statusCode == 200) {
      stocks.assignAll(response.data['stocks']);
      total = response.data['total'];
      statusrequest = Statusrequest.success;
      update();
    } else {
      return Get.defaultDialog(title: "faild to fetch data");
    }
  }

  @override
  void onInit() {
    getstocks();

    super.onInit();
  }
}
