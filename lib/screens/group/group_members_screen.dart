import 'package:flutter/material.dart';
import 'dart:core';

import 'package:mobile/screens/donation/pledge_screen.dart';

class GroupMembersScreen extends StatefulWidget {
  const GroupMembersScreen({Key? key}) : super(key: key);

  @override
  State<GroupMembersScreen> createState() => _GroupMembersScreenState();
}

class _GroupMembersScreenState extends State<GroupMembersScreen> {
  List<String> contacts = ["John", "Mathias", "Joseph", "Daudi", "Raphael", "Steven", "Alex", "Mwagilo", "Daudi", "Raphael", "Steven", "Alex", "Mwagilo"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.withOpacity(0.2),
        body: Center(
          child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    child: Icon(
                        Icons.person_outline),
                  ),
                  title: Text(
                      contacts[index]
                  ),
                  subtitle: const Text("2000"),
                );
              }),
        ),
      floatingActionButton: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (contexts) => PledgeScreen()));
          },
          icon: const Icon(
            Icons.add,
            color: Colors.teal,
          ),
      ),
    );
  }
}
