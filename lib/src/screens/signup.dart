import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yourart/src/constants/sizes.dart';
import 'package:yourart/src/constants/textstring.dart';
import 'package:yourart/src/controllers/signup_constroller.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});
 final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
   
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(defaultSize),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                          "assets/images/school-of-visual-arts-banner.png",
                          height: size.height * 0.2)),
                  Text(signUpTitle,
                      style: Theme.of(context).textTheme.headlineLarge),
                  Text(signUpSubTitle,
                      style: Theme.of(context).textTheme.bodyLarge),
                  Form(
                      key: _formKey,
                      child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                    controller: controller.fullName,
                                    decoration: const InputDecoration(
                                      prefixIcon:
                                          Icon(Icons.person_outline_outlined),
                                      labelText: fullName,
                                      hintText: fullName,
                                      border: OutlineInputBorder(),
                                    )),
                                const SizedBox(height: formHeight - 20),
                                TextFormField(
                                    controller: controller.email,
                                    decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.message_sharp),
                                      labelText: email,
                                      hintText: email,
                                      border: OutlineInputBorder(),
                                    )),
                                const SizedBox(height: formHeight - 20),
                                TextFormField(
                                    controller: controller.password,
                                    decoration: const InputDecoration(
                                        prefixIcon:
                                            Icon(Icons.fingerprint_outlined),
                                        labelText: password,
                                        hintText: password,
                                        border: OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                            onPressed: null,
                                            icon: Icon(
                                                Icons.remove_red_eye_sharp)))),
                                const SizedBox(height: formHeight - 20),
                                SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          SignUpController.instance
                                              .registerUser(
                                                  controller.email.text.trim(),
                                                  controller.password.text
                                                      .trim());
                                        }
                                      },
                                      child: Text(signup.toUpperCase()),
                                    )),
                              ]))),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("OR"),
                        OutlinedButton.icon(
                            icon: Image(
                                image: AssetImage(
                                  "assets/images/googlelogo.png",
                                ),
                                width: 20.0),
                            onPressed: () {},
                            label: Text(signInWithGoogle)),
                        SizedBox(height: formHeight - 20),
                        TextButton(
                          onPressed: () {},
                          child: Text.rich(TextSpan(
                              text: alreadyHaveAnAccount,
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: signup,
                                  style: TextStyle(color: Colors.blue),
                                )
                              ])),
                        ),
                      ])
                ]))),
      ),
    );
  }
}
