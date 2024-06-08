import 'package:flutter/material.dart';

class CustomcontainerAccoun extends StatelessWidget {
  final String st1;
  final String st2;
  const CustomcontainerAccoun(
      {super.key, required this.st1, required this.st2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 10),
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
            "$st1     ",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            st2,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
