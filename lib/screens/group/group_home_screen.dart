import 'package:flutter/material.dart';
import 'dart:core';

import 'package:mobile/screens/donation/group_collection_summary_screen.dart';
import 'package:mobile/screens/group/group_members_screen.dart';

class GroupHomeScreen extends StatelessWidget {
  const GroupHomeScreen({super.key, required this.groupName});

  final String groupName;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              groupName
            ),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    text: "Home",
                  ),
                  Tab(
                    text: "Collection",
                  )
                ]
            ),
          ),
          body: const TabBarView(
            children: [
              GroupMembersScreen(),
              GroupCollectionScreen()
            ],
          ),
        )
    );
  }
}
