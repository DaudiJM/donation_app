import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:mobile/screens/group/CreateGroupScreen.dart';
import 'package:mobile/utils/User.dart';


class SelectMembersScreen extends StatefulWidget {
  const SelectMembersScreen({Key? key}) : super(key: key);

  @override
  State<SelectMembersScreen> createState() => _SelectMembersScreenState();
}

class _SelectMembersScreenState extends State<SelectMembersScreen> {
  List<Contact> contacts = [];
  List<User> selected = [];

  void _toCreateGroupScreen(){
    if(selected.isNotEmpty){
      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateGroupScreen(users: selected)));
    }
  }
  void _loadContacts() async {
    if(await FlutterContacts.requestPermission()){
      contacts = await FlutterContacts.getContacts(withProperties: true, withPhoto: true);
      setState(() {
        contacts = contacts;
      });
    }
  }

  bool _checkContains(String msisdn){
    User newMember = User();
    newMember.msisdn = msisdn;

    if(selected.contains(newMember)){
      return true;
    }
    return false;
  }


  void _handleSelectMembers(String msisdn){
    User newMember = User();
    newMember.msisdn = msisdn;

    if(selected.contains(newMember)){
      selected.remove(newMember);
    } else {
      selected.add(newMember);
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    _loadContacts();
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Group"),
        actions: [
          selected.isNotEmpty ? IconButton(
              onPressed: (){},
              icon: const Icon(Icons.remove)
          ) : const Padding(padding: EdgeInsets.all(0.0))
        ],
      ),
      body: contacts.isNotEmpty ? ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              onTap: (){
                _handleSelectMembers(contacts![index].phones.first.number);
              },
              leading: _checkContains(contacts![index].phones.first.number) ? const CircleAvatar(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                child: Icon(
                    Icons.check),
              ) : const CircleAvatar(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                child: Icon(
                    Icons.person_outline),
              ),
              title: Text(
                  contacts![index].displayName.isNotEmpty ? contacts![index].displayName : "${contacts![index].name.first} ${contacts![index].name.last}"
              ),
              subtitle: Text(
                  contacts![index].phones.isNotEmpty ? contacts![index].phones.first.number : ""
              ),
            );
          }) : const Center(
        child: Text("No contacts"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _toCreateGroupScreen();
        },
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.send,
        ),
      ),
    );
  }
}
