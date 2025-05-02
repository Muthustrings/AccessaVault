import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsPage> createState() => _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool _email = false;
  bool _sms = false;
  bool _push = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Settings'),
        backgroundColor: const Color(0xFF0A2B4B),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Notifications',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Email Notifications', style: TextStyle(fontSize: 28, color: Color(0xFF374151))),
                Switch(
                  value: _email,
                  onChanged: (val) {
                    setState(() {
                      _email = val;
                    });
                  },
                  activeColor: const Color(0xFF195A8C),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('SMS Notifications', style: TextStyle(fontSize: 28, color: Color(0xFF374151))),
                Switch(
                  value: _sms,
                  onChanged: (val) {
                    setState(() {
                      _sms = val;
                    });
                  },
                  activeColor: const Color(0xFF195A8C),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Push Notifications', style: TextStyle(fontSize: 28, color: Color(0xFF374151))),
                Switch(
                  value: _push,
                  onChanged: (val) {
                    setState(() {
                      _push = val;
                    });
                  },
                  activeColor: const Color(0xFF195A8C),
                ),
              ],
            ),
            const SizedBox(height: 48),
            Center(
              child: SizedBox(
                width: 160,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF195A8C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Notification settings saved!')),
                    );
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}