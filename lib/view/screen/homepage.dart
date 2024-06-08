import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controller/homepage_Controller.dart';
import 'package:stock_app/view/widget/bottomnavbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return GetBuilder<HomePageControllerImp>(
        builder: (controller) => Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            appBar: AppBar(
                title: Text(
                  controller.selecteditem == 0
                      ? "DASHBOARD"
                      : controller.selecteditem == 1
                          ? "Inventory"
                          : controller.selecteditem == 2
                              ? "Settings"
                              : controller.selecteditem == 3
                                  ? "Account"
                                  : "INVENTORY ITEM DETAILS",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                leading: controller.selecteditem == 4
                    ? IconButton(
                        onPressed: () => controller.changeSelceted(1),
                        icon: const Icon(Icons.arrow_back_ios_new))
                    : null,
                actions: [
                  controller.selecteditem == 1
                      ? const Text("serche form")
                      : controller.selecteditem == 2
                          ? const Text("iventory itemdet")
                          : const Center()
                ],
                backgroundColor: Theme.of(context).colorScheme.primary),
            bottomNavigationBar: Bottomnavbar(
              controller: controller,
            ),
            body: controller.pages[controller.selecteditem!]));
  }
}
