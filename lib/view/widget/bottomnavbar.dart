import 'package:flutter/material.dart';
import 'package:stock_app/controller/homepage_Controller.dart';

class Bottomnavbar extends StatelessWidget {
  final HomePageControllerImp controller;
  final void Function()? onTap;
  const Bottomnavbar({super.key, required this.controller, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () => controller.changeSelceted(0),
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: controller.selecteditem == 0
                      ? const Color.fromARGB(159, 255, 255, 255)
                      : null,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.legend_toggle_rounded),
                  Text(
                    "Home",
                    style: TextStyle(
                        fontSize: controller.selecteditem == 0 ? 17 : 15),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => controller.changeSelceted(1),
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 80,
              height: 70,
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Theme.of(context,
                  //     offset: const Offset(0, 0),
                  //     blurRadius: 20,
                  //   ),
                  // ],
                  color: controller.selecteditem == 1 ||
                          controller.selecteditem == 4
                      ? const Color.fromARGB(159, 255, 255, 255)
                      : null,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.inventory_2_outlined),
                  Text(
                    "Inventory",
                    style: TextStyle(
                        fontSize: controller.selecteditem == 1 ||
                                controller.selecteditem == 4
                            ? 17
                            : 15),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => controller.changeSelceted(2),
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: controller.selecteditem == 2
                      ? const Color.fromARGB(159, 255, 255, 255)
                      : null,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.settings),
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: controller.selecteditem == 2 ? 17 : 15),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => controller.changeSelceted(3),
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: controller.selecteditem == 3
                      ? const Color.fromARGB(159, 255, 255, 255)
                      : null,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.person),
                  Text(
                    "Account",
                    style: TextStyle(
                        fontSize: controller.selecteditem == 3 ? 17 : 15),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
