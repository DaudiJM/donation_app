import 'package:flutter/material.dart';
import 'package:mobile/utils/Group.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:core';


import '../../utils/User.dart';

class CreateGroupScreen extends StatefulWidget {
  CreateGroupScreen({super.key, required this.users});

  final List<User> users;

  @override
  State<CreateGroupScreen> createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
  late final SharedPreferences prefs;

  final TextEditingController _nameController = TextEditingController();

  void _loadData () async{
    prefs = await SharedPreferences.getInstance();
    setState(() {

    });

  }

  void _createGroup() async {
    if(_nameController.text.isNotEmpty){
      Group group = Group();
      group.name = _nameController.text;
      group.members = widget.users;

      prefs.setString("group", group.name);
    }
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _createGroup();
        },
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.send,
        ),
      ),
    );
  }
}

