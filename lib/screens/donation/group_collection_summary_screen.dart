import 'package:flutter/material.dart';
import 'dart:core';


class GroupCollectionScreen extends StatelessWidget {
  const GroupCollectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Group name"),
        automaticallyImplyLeading: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Center(
          child: Text("Summary"),
        ),
      ),
    );
  }
}
