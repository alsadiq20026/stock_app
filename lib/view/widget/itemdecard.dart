import 'package:flutter/material.dart';

class Itemdecard extends StatelessWidget {
  final String type;
  final String quantity;
  final String date;
  const Itemdecard(
      {super.key,
      required this.type,
      required this.quantity,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(date, style: Theme.of(context).textTheme.bodySmall),
          Container(
            alignment: Alignment.center,
            width: 80,
            height: 40,
            decoration: BoxDecoration(
                color: type == "Add"
                    ? Theme.of(context).colorScheme.onTertiary
                    : Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              type,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Text(
            "$quantity pcs",
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
