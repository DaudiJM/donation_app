import 'package:flutter/material.dart';
import 'dart:core';

class PledgeScreen extends StatelessWidget {
  const PledgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pledge"),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: TextFormField(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: FilledButton(
                onPressed: null,
                child: Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
