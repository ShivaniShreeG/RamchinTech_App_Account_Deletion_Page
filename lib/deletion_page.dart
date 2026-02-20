import 'package:flutter/material.dart';

void main() {
  runApp(const DeleteAccountWebApp());
}

class DeleteAccountWebApp extends StatelessWidget {
  const DeleteAccountWebApp({super.key});

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

class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  final String supportEmail = 'support@ramchintech.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Your Account'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Page Title
                  const Text(
                    'RamchinTech - Account Deletion Instructions',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  // Section: Overview
                  const Text(
                    'Overview:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Follow these instructions carefully to delete your account from RamchinTech apps. '
                        'Please ensure you have selected the correct app before sending a deletion request.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),

                  // Section: Data Deletion
                  const Text(
                    'Data Deletion & Retention:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '• All profile information, app usage history, and saved content will be permanently deleted.\n'
                        '• Some data may remain only for legal or accounting purposes.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),

                  // Section: How to Delete
                  const Text(
                    'How to Request Deletion:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '1. Identify the RamchinTech app for which you want to delete your account.\n'
                        '2. Send an email to the support team requesting account deletion.\n'
                        '3. Include your account details and app name in the email for faster processing.\n'
                        '4. Wait for confirmation from the support team that your account has been deleted.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),

                  // Section: Support Contact
                  const Text(
                    'Need Help?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      '📧 $supportEmail',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Footer
                  Center(
                    child: Text(
                      'Thank you for using RamchinTech services!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}