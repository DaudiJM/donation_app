import 'package:flutter/material.dart';
import 'dart:core';

import 'package:mobile/screens/group/SelectMembersScreen.dart';
import 'package:mobile/screens/group/group_home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserGroupsScreen extends StatefulWidget {
  const UserGroupsScreen({Key? key}) : super(key: key);

  @override
  State<UserGroupsScreen> createState() => _UserGroupsScreenState();
}

class _UserGroupsScreenState extends State<UserGroupsScreen> {
  late String group;
  _getGroup() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? group = prefs.getString('group');

    setState(() {
        this.group = group!;
    });
  }

  @override
  void initState() {
    _getGroup();
    super.initState();
  }
  void _toCreateGroup(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectMembersScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.withOpacity(0.2),
      body: group.isNotEmpty ? ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => GroupHomeScreen(groupName: group!)));
        },
        title: Text(group),
      ) : const Center(
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
