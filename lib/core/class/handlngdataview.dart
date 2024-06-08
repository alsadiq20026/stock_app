import 'package:flutter/material.dart';
import 'package:stock_app/core/statusrequest.dart';

class Handlinfdataview extends StatelessWidget {
  final Widget widget;
  final Statusrequest statusrequest;
  const Handlinfdataview(
      {super.key, required this.statusrequest, required this.widget});
  @override
  Widget build(BuildContext context) {
    return statusrequest == Statusrequest.loading
        ? const Center(child: CircularProgressIndicator())
        : widget;
  }
}
