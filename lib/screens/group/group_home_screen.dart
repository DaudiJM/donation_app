import 'package:flutter/material.dart';
import 'dart:core';

class GroupHomeScreen extends StatelessWidget {
  const GroupHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
                tabs: [
                  Tab(
                    text: "Home",
                  ),
                  Tab(
                    text: "Members",
                  )
                ]
            ),
          ),
          body: const TabBarView(
            children: [
              Text("Tab 1"),
              Text("Tab 2")
            ],
          ),
        )
    );
  }
}
