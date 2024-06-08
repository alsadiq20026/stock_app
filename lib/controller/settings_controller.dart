import 'package:get/get.dart';

abstract class SettingController extends GetxController {}

class SettingControllerImp extends SettingController {
  bool? isdarkmode;

  @override
  void onInit() {
    isdarkmode = Get.isDarkMode;
    super.onInit();
  }
}
