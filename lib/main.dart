import 'package:flutter/material.dart';
import 'package:mobile/screens/donation/group_collection_summary_screen.dart';
import 'package:mobile/screens/donation/pledge_screen.dart';
import 'package:mobile/screens/group/group_home_screen.dart';
import 'package:mobile/screens/home/home_screen.dart';
import 'package:mobile/screens/splash/splash_screen.dart';
import 'package:mobile/utils/theme.dart';

void main() {
  runApp(const DonationApp());
}

class DonationApp extends StatelessWidget {
  const DonationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donation',
      theme: lightTheme,
      home: const SplashScreen()
    );
  }
}
