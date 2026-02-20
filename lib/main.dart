import 'package:flutter/material.dart';
import 'deletion_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RamchinTech - Delete Account',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DeleteAccountPage(),
      debugShowCheckedModeBanner: false, // cleaner for web publishing
    );
  }
}