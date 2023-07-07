import 'package:flutter/material.dart';

import 'package:yourart/src/screens/signup.dart';

import '../constants/sizes.dart';
import '../constants/textstring.dart';
import 'mobilescreenlayout.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Text(loginTitle,
                      style: Theme.of(context).textTheme.headlineLarge),
                  Text(loginSubTitle,
                      style: Theme.of(context).textTheme.bodyLarge),
                  Form(
                      child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                    decoration: const InputDecoration(
                                  prefixIcon:
                                      Icon(Icons.person_outline_outlined),
                                  labelText: email,
                                  hintText: email,
                                  border: OutlineInputBorder(),
                                )),
                                SizedBox(height: formHeight - 20),
                                TextFormField(
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
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text(forgetPassword))),
                                SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MobileScreenLayout()),
  );
                                      },
                                      child: Text(login.toUpperCase()),
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
