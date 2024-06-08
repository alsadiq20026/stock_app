import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:stock_app/controller/authcode_Controller.dart';

class Authcode extends StatelessWidget {
  const Authcode({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCodeControllerImp controller = Get.put(AuthCodeControllerImp());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              "Enter the code that was sent to your email",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 30,
            ),
            OtpTextField(
              numberOfFields: 5,
              onSubmit: (value) => controller.authcode(value),
            )
          ],
        ),
      ),
    );
  }
}
