import 'package:flutter/material.dart';

class BillingSettingsPage extends StatelessWidget {
  const BillingSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Billing Settings'),
        backgroundColor: const Color(0xFF0A2B4B),
      ),
      body: const Center(
        child: Text(
          'Billing settings will be available soon.',
          style: TextStyle(fontSize: 20, color: Color(0xFF223046)),
        ),
      ),
    );
  }
}