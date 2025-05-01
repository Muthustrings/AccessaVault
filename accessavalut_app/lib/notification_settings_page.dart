import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatelessWidget {
  const NotificationSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Settings'),
        backgroundColor: const Color(0xFF0A2B4B),
      ),
      body: const Center(
        child: Text(
          'Notification settings will be available soon.',
          style: TextStyle(fontSize: 20, color: Color(0xFF223046)),
        ),
      ),
    );
  }
}