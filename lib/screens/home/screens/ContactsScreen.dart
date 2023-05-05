import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter_contacts/flutter_contacts.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();

}

class _ContactsScreenState extends State<ContactsScreen> {

  List<Contact> contacts = [];

  void _loadContacts() async {
    if(await FlutterContacts.requestPermission()){
      contacts = await FlutterContacts.getContacts(withProperties: true, withPhoto: true);

      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _loadContacts();
    return Scaffold(
      body: Center(
        child: contacts.isNotEmpty ? ListView.builder(
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
                    contacts![index].displayName.isNotEmpty ? contacts![index].displayName : "${contacts![index].name.first} ${contacts![index].name.last}"
                ),
                subtitle: Text(
                  contacts![index].phones.isNotEmpty ? contacts![index].phones.first.number : ""
                ),
              );
            }) : const Text("No contacts")
      )
    );
  }
}

