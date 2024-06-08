import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:stock_app/link_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthCodeController extends GetxController {
  authcode(String code);
}

class AuthCodeControllerImp extends AuthCodeController {
  dynamic email;
  Dio dio = Dio();

  @override
  authcode(String code) async {
    print(email);
    SharedPreferences sharedPreferences;
    sharedPreferences = await SharedPreferences.getInstance();
    var response = await dio.post(AppLink.authcode,
        options: Options(contentType: "application/json"),
        data: {"email": email.toString(), "authcode": int.parse(code)});
    if (response.statusCode == 200) {
      sharedPreferences.setString("name", response.data['user']['name']);
      sharedPreferences.setString("email", response.data['user']['email']);
      sharedPreferences.setInt("phone", response.data['user']['phone']);
      sharedPreferences.setString("token", response.data['token']);
      sharedPreferences.setString("job", response.data['user']['job']);
      sharedPreferences.setInt("step", 2);
      Get.offNamed("/homepage");
    }
  }

  @override
  void onInit() {
    email = Get.arguments;
    super.onInit();
  }
}
