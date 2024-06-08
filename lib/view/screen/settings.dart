import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.all(
            Radius.circular(27),
          )),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: 170,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Theme.of(context).colorScheme.onSecondaryContainer),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Theme     ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Switch(
                    thumbColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.white;
                      }
                      return Colors.white;
                    }),
                    thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return const Icon(
                          Icons.dark_mode_outlined,
                          color: Colors.black,
                        );
                      }
                      return const Icon(
                        Icons.light_mode_outlined,
                        size: 25,
                        color: Colors.black,
                      ); // All other states will use the default thumbIcon.
                    }),
                    activeColor: Colors.black,
                    value: Get.isDarkMode,
                    onChanged: (value) => {
                      Get.isDarkMode
                          ? Get.changeThemeMode(ThemeMode.light)
                          : Get.changeThemeMode(ThemeMode.dark)
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
