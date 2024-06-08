import 'package:flutter/material.dart';

class Notiicon extends StatelessWidget {
const Notiicon({ super.key });

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(30)),
          child: const Icon(
            Icons.notifications_none_outlined,
            color: Colors.white,
          )),
    );
  }
}