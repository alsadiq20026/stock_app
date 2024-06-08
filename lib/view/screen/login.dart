import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controller/login_controller.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Image.asset("assest/images/2.jpg"),
            Text(
              "Login to your account",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: controller.formstate,
              child: TextFormField(
                controller: controller.email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "can't be empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Your Email",
                    fillColor: Theme.of(context).colorScheme.onSecondary,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    filled: true),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Theme.of(context).colorScheme.onBackground,
              onPressed: () => {controller.login()},
              textColor: Theme.of(context).colorScheme.background,
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
