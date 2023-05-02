import 'package:flutter/material.dart';
import 'dart:core';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Donation"),
      actions: const [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.menu)
        )
      ],
    );
  }
}
