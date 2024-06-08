import 'package:get/get.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AccountController extends GetxController {
  init();
}

class AccountControllerImp extends AccountController {
  late SharedPreferences sharedPreferences;
  Statusrequest statusrequest = Statusrequest.none;
  @override
  init() async {
    statusrequest = Statusrequest.loading;
    sharedPreferences = await SharedPreferences.getInstance();
    statusrequest = Statusrequest.success;
    update();
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }
}
