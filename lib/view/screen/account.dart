import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controller/account_controller.dart';
import 'package:stock_app/core/statusrequest.dart';
import 'package:stock_app/view/widget/customcontainerAccoun.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AccountControllerImp());
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: const BorderRadius.all(
              Radius.circular(27),
            )),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GetBuilder<AccountControllerImp>(
            builder: (controller) => controller.statusrequest ==
                    Statusrequest.loading
                ? const CircularProgressIndicator()
                : ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(120)),
                              child: const Icon(
                                Icons.person_outline,
                                size: 80,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        controller.sharedPreferences.getString("name")!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      CustomcontainerAccoun(
                        st1: "Email   ",
                        st2: controller.sharedPreferences.getString("email")!,
                      ),
                      CustomcontainerAccoun(
                        st1: "phone    ",
                        st2: controller.sharedPreferences
                            .getInt("phone")
                            .toString(),
                      ),
                      CustomcontainerAccoun(
                          st1: "job",
                          st2: controller.sharedPreferences.getString("job")!)
                    ],
                  ),
          ),
        ));
  }
}
