import 'package:flutter/material.dart';

class Itemcard extends StatelessWidget {
  final void Function()? onTap;
  final String itemsize;
  final String quantitiy;
  final int total;
  const Itemcard(
      {super.key,
      this.onTap,
      required this.itemsize,
      required this.quantitiy,
      required this.total});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        width: 190,
        // height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.onSecondaryContainer),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(232, 232, 232, 1)),
                  child: Text(
                    itemsize,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 18),
                  ),
                ),
                Text("$quantitiy pcs")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              color: int.parse(quantitiy) / total >= 0.4
                  ? const Color.fromARGB(255, 76, 227, 154)
                  : int.parse(quantitiy) / total >= 0.2
                      ? Theme.of(context).colorScheme.primary
                      : Colors.red,
              value: int.parse(quantitiy) / total,
            )
          ],
        ),
      ),
    );
  }
}
