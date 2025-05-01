import 'package:flutter/material.dart';
import 'general_settings_page.dart';
import 'security_settings_page.dart';
import 'notification_settings_page.dart';
import 'billing_settings_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: const Color(0xFF0A2B4B),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(6),
                  child: const Icon(Icons.shield, color: Color(0xFF0A2B4B), size: 28),
                ),
                const SizedBox(width: 16),
                const Text(
                  'AccessaVault',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, top: 48, bottom: 16),
            child: const Text(
              'Settings',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color:  Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ListView(
                  children: [
                    _settingsTile(context, 'General', onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const GeneralSettingsPage()),
                      );
                    }),
                    _divider(),
                    _settingsTile(context, 'Security', onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const SecuritySettingsPage()),
                      );
                    }),
                    _divider(),
                    _settingsTile(context, 'Notifications', onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const NotificationSettingsPage()),
                      );
                    }),
                    _divider(),
                    _settingsTile(context, 'Billing', onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const BillingSettingsPage()),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _settingsTile(BuildContext context, String title, {VoidCallback? onTap}) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          color: Color(0xFF223046),
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(Icons.chevron_right, color: Color(0xFF223046)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      onTap: onTap ?? () {
        if (title == 'General') {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const GeneralSettingsPage()),
          );
        }
      },
    );
  }

  Widget _divider() {
    return const Divider(
      color: Color(0xFFE5E7EB),
      height: 0,
      thickness: 1,
      indent: 16,
      endIndent: 16,
    );
  }
}