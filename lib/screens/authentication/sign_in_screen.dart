import 'package:flutter/material.dart';
import 'dart:core';

import 'package:mobile/screens/home/home_screen.dart';


class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final TextEditingController _passwordController = TextEditingController();

  void _toHome(BuildContext context){
    if(_passwordController.text.isNotEmpty){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(
                height: 180,
                child: Image.asset("assets/logo_5.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: const Text("Password"),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: FilledButton(
                        onPressed: (){
                          _toHome(context);
                        },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white)
                      ),
                        child: const Text(
                            "Login",
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
