import 'package:flutter/material.dart';

class Inventoryrow extends StatelessWidget {
  final void Function()? onTap1;
  final void Function()? onTap2;
  final Color? color1;
  final Color? color2;
  final String st1;
  final String stt1;
  final String st2;
  final String stt2;
  const Inventoryrow(
      {super.key,
      this.onTap1,
      this.onTap2,
      this.color1,
      this.color2,
      required this.st1,
      required this.stt1,
      required this.st2,
      required this.stt2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: onTap1,
          child: Container(
            padding: const EdgeInsets.all(14),
            width: 170,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28), color: color1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Theme.of(context).colorScheme.onBackground),
                  child: Icon(
                    Icons.blur_circular_outlined,
                    size: 40,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Column(
                  children: [Text(st1), Text(stt1)],
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () => onTap2,
          child: Container(
            width: 170,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28), color: color2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Theme.of(context).colorScheme.background),
                  child: Icon(
                    Icons.blur_circular_outlined,
                    size: 40,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Column(
                  children: [Text(st2), Text(stt2)],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
