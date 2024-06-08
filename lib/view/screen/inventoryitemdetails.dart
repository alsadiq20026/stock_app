import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:stock_app/controller/itemdetails_controller.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:stock_app/view/widget/itemdecard.dart';

class Inventoryitemdetails extends StatelessWidget {
  const Inventoryitemdetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemdetailsControllerImp());
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GetBuilder<ItemdetailsControllerImp>(
            builder: (controller) => controller.statusrequest ==
                    Statusrequest.loading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(
                    children: [
                      PhysicalModel(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(0, 0, 0, 0),
                        child: Container(
                          width: 260,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.operations[0]['itemid']['size'],
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Text(
                                  "${controller.operations[0]['itemid']['Quantity']} pcs")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ...List.generate(
                          controller.operations.length,
                          (index) => Itemdecard(
                              date: Jiffy.parse(
                                      controller.operations[index]['createdAt'])
                                  .yMMMdjm,
                              type: controller.operations[index]
                                  ['Operationtype'],
                              quantity: controller.operations[index]['quantity']
                                  .toString()))
                    ],
                  ),
          ),
        ));
  }
}
