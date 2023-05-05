import 'package:flutter/material.dart';
import 'dart:core';

import 'package:mobile/screens/group/SelectMembersScreen.dart';

class UserGroupsScreen extends StatefulWidget {
  const UserGroupsScreen({Key? key}) : super(key: key);

  @override
  State<UserGroupsScreen> createState() => _UserGroupsScreenState();
}

class _UserGroupsScreenState extends State<UserGroupsScreen> {

  void _toCreateGroup(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectMembersScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.withOpacity(0.2),
      body: const Center(
        child: Text("No groups available"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _toCreateGroup();
        },
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.add,
        ),
      )
    );
  }
}
