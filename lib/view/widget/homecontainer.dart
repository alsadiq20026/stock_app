import 'package:flutter/material.dart';

class Homecontainer extends StatelessWidget {
  final Color? color;
  final String st1;
  final String st2;
  const Homecontainer(
      {super.key, this.color, required this.st1, required this.st2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(18),
      alignment: Alignment.centerLeft,
      width: 270,
      height: 150,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(29), color: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            st1,
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
