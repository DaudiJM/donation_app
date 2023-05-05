import 'package:flutter/material.dart';
import 'package:mobile/screens/group/SelectMembersScreen.dart';
import 'dart:core';

import 'package:mobile/screens/home/screens/ContactsScreen.dart';
import 'package:mobile/screens/home/screens/UserGroupsScreen.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;


  void _toCreateGroup(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectMembersScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Donation"),
        automaticallyImplyLeading: true,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
               PopupMenuItem(
                onTap: (){
                    _toCreateGroup();
                },
                child: const Text("New Group")
              ),
              const PopupMenuItem(child: Text('Settings')),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        width: 240,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: Column(
            children: const [
              Text("Drawer")
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        height: 60,
        shadowColor: Colors.transparent,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            selectedIcon: Icon(Icons.home),
          ),
          NavigationDestination(
            icon: Icon(Icons.mail_outline),
            selectedIcon: Icon(Icons.mail),
            label: "Invitations",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.phone),
            icon: Icon(Icons.phone_outlined),
            label: "Contacts",
          ),
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const UserGroupsScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          alignment: Alignment.center,
          child: const ContactsScreen(),
        ),
      ][currentPageIndex],
    );
  }
}
