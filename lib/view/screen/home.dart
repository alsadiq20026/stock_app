import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controller/home_controller.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:stock_app/view/widget/firesrowhompage.dart';
import 'package:stock_app/view/widget/homecontainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: const BorderRadius.all(
              Radius.circular(27),
            )),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GetBuilder<HomeControllerImp>(
            builder: (controller) =>
                controller.statusrequest == Statusrequest.loading
                    ? const Center(
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : ListView(
                        children: [
                          Firesrowhompage(total: "${controller.total}"),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "  Inventory",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Homecontainer(
                            st1: "No. Of Tires",
                            st2: "${controller.stocks[0]['Quantity']}",
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          Homecontainer(
                            st1: "No. Of Wheels",
                            st2: "${controller.stocks[1]['Quantity']}",
                            color: Theme.of(context).colorScheme.onSecondary,
                          )
                        ],
                      ),
          ),
        ));
  }
}
