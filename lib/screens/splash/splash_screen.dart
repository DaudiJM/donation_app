import 'package:flutter/material.dart';
import 'dart:core';

import 'package:mobile/screens/authentication/sign_up_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  void _startup(BuildContext context){
    Future.delayed(const Duration(milliseconds: 2000), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    _startup(context);

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 200,
                child: Image.asset("assets/logo_5.png"),
              ),
            ),
            const Text("Donate")
          ],
        )
      )
    );
  }
}
