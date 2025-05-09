import 'package:flutter/material.dart';
import 'general_settings_page.dart';
import 'security_settings_page.dart';
import 'notification_settings_page.dart';
import 'common_text_styles.dart';
import'common_colors.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.accent(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 48, top: 48, bottom: 16),
            child: Text(
              'Settings',
              style: CommonTextStyles.heading1(context),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Container(
                decoration: BoxDecoration(
                  color: CommonColors.card(context),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: CommonColors.shadow(context),
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
                    // Removed: _settingsTile(context, 'Billing', onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => const BillingSettingsPage()),
                    //   );
                    // }),
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
        style: TextStyle(
          fontSize: 24,
          color: CommonColors.textPrimary(context),
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(Icons.chevron_right, color: CommonColors.textPrimary(context)),
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
    return Divider(
      color: Colors.grey[300],
      height: 0,
      thickness: 1,
      indent: 16,
      endIndent: 16,
    );
  }
}
