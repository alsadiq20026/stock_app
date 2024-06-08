import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controller/additem_controller.dart';
import 'package:stock_app/core/shared/formfiled.dart';
import 'package:stock_app/core/statusrequest.dart';

class Additem extends StatelessWidget {
  const Additem({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AdditemControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: const Text('Add item'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GetBuilder<AdditemControllerImp>(
            builder: (controller) =>
                controller.statusrequest == Statusrequest.loading
                    ? const Center(child: CircularProgressIndicator())
                    : Form(
                        key: controller.formstate,
                        child: ListView(
                          children: [
                            Text(
                              "select category",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            DropdownMenu(
                                width: 300,
                                controller: controller.category,
                                dropdownMenuEntries: [
                                  DropdownMenuEntry(
                                      value: controller.stocks[0]['_id'],
                                      label: "Tires"),
                                  DropdownMenuEntry(
                                      value: controller.stocks[1]['_id'],
                                      label: "Wheels")
                                ]),
                            Formfiled(
                              hint: "size",
                              controller: controller.size,
                            ),
                            Formfiled(
                              hint: "quantity",
                              controller: controller.quantity,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Theme.of(context).colorScheme.onBackground,
                              onPressed: () => {controller.additem()},
                              child: Text(
                                "Add",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background),
                              ),
                            )
                          ],
                        ),
                      ),
          ),
        ));
  }
}
