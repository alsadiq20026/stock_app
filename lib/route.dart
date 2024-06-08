import 'package:get/get.dart';
import 'package:stock_app/view/screen/additem.dart';
import 'package:stock_app/view/screen/authcode.dart';
import 'package:stock_app/view/screen/home.dart';
import 'package:stock_app/view/screen/homepage.dart';
import 'package:stock_app/view/screen/login.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/login", page: () => const Login()),
  GetPage(name: "/homepage", page: () => const Homepage()),
  GetPage(name: "/home", page: () => const Home()),
  GetPage(name: "/authcode", page: () => const Authcode()),
  GetPage(name: "/additem", page: () => const Additem()),
];
