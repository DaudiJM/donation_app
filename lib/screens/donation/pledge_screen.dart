import 'package:flutter/material.dart';
import 'dart:core';

class PledgeScreen extends StatelessWidget {
  PledgeScreen({Key? key}) : super(key: key);
  final TextEditingController _amountController = TextEditingController();

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixText: "Tzs ",
                  fillColor: Colors.teal.withOpacity(0.2),
                  hintText: "Amount",
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.teal
                    )
                  )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: FilledButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
