import 'package:flutter/material.dart';

class Formfiled extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  const Formfiled({super.key, this.controller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 15),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return "can't be empty";
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: hint,
            fillColor: Theme.of(context).colorScheme.onSecondary,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            filled: true),
      ),
    );
  }
}
