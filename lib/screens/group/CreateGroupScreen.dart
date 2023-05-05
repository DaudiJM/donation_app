import 'package:flutter/material.dart';
import 'dart:core';

import '../../utils/User.dart';

class CreateGroupScreen extends StatefulWidget {
  const CreateGroupScreen({Key? key}) : super(key: key);

  @override
  State<CreateGroupScreen> createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
  List<User> members = [];
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Group"
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
                label: const Text("Group Name"),
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
          const Divider(height: 10),
        ],
      ),
    );
  }
}
