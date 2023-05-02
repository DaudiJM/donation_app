import 'package:flutter/material.dart';
import 'dart:core';

import 'package:mobile/screens/authentication/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  
  void _toSignIn(BuildContext context){
    if(_nameController.text.isNotEmpty && _phoneNumberController.text.isNotEmpty){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: Center(
                      child: Image.asset("assets/logo_5.png"),
                    ),
                  ),
                  const Text(
                      "Please Register before starting using the App"
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                            label: const Text("Name"),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 10
                                ),
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                      TextFormField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                            label: const Text("Phone Number"),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 10
                                ),
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                      // TextFormField(
                      //   decoration: InputDecoration(
                      //       label: const Text("Password"),
                      //       floatingLabelBehavior: FloatingLabelBehavior.never,
                      //       filled: true,
                      //       fillColor: Colors.white70,
                      //       border: OutlineInputBorder(
                      //           borderSide: const BorderSide(
                      //               width: 10
                      //           ),
                      //           borderRadius: BorderRadius.circular(20)
                      //       )
                      //   ),
                      // ),
                       Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: FilledButton(
                          onPressed: () => {
                            _toSignIn(context)
                          },
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.white
                            )
                          ),
                          child: const Text(
                              "Sign Up",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
