import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controller/homepage_Controller.dart';
import 'package:stock_app/controller/inventory_controller.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:stock_app/view/widget/inventoryrow.dart';
import 'package:stock_app/view/widget/itemcard.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(InventoryControllerImp());
    HomePageControllerImp controllerImp = Get.put(HomePageControllerImp());
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          tooltip: "Add Item",
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: Theme.of(context).colorScheme.onBackground,
          onPressed: () => {Get.toNamed("/additem")},
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: const BorderRadius.all(
                  Radius.circular(27),
                )),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: GetBuilder<InventoryControllerImp>(
                builder: (controller) =>
                    controller.statusrequest == Statusrequest.loading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView(
                            children: [
                              Inventoryrow(
                                st1:
                                    "${controller.controllerImp.stocks[0]['Quantity']}",
                                stt1: "Tires",
                                color1: controller.selected == 0
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                onTap1: () => controller.changeselected(0),
                                st2:
                                    "${controller.controllerImp.stocks[1]['Quantity']}",
                                stt2: "Wheels",
                                color2: controller.selected == 1
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                onTap2: () => controller.changeselected(1),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ...List.generate(
                                  controller.items.length,
                                  (index) => Itemcard(
                                      onTap: () {
                                        controller.selecteditemid =
                                            controller.items[index]['_id'];
                                        controllerImp.changeSelceted(4);
                                      },
                                      itemsize: controller.items[index]['size'],
                                      quantitiy:
                                          "${controller.items[index]['Quantity']}",
                                      total: controller.totquantity!))
                            ],
                          ),
              ),
            )));
  }
}
