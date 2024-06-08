import 'package:flutter/material.dart';

class Firesrowhompage extends StatelessWidget {
  final String total;
  const Firesrowhompage({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
          width: 170,
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: Theme.of(context).colorScheme.secondary),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
                child: Icon(
                  Icons.blur_circular_outlined,
                  size: 40,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Text(
                total,
                style: const TextStyle(color: Colors.white),
              ),
              const Text(
                "Total Unit In Stock ",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          width: 170,
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: Theme.of(context).colorScheme.onSecondary),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
                child: Icon(
                  Icons.change_circle_outlined,
                  size: 40,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const Text(
                "\$760.132.00",
              ),
              const Text(
                "Total Inventory Value ",
              )
            ],
          ),
        )
      ],
    );
  }
}
