import 'package:flutter/material.dart';

class SecuritySettingsPage extends StatefulWidget {
  const SecuritySettingsPage({Key? key}) : super(key: key);

  @override
  State<SecuritySettingsPage> createState() => _SecuritySettingsPageState();
}

class _SecuritySettingsPageState extends State<SecuritySettingsPage> {
  String _selectedPasswordPolicy = 'Default';
  bool _twoFactorEnabled = false;
  String _selectedTimeZone = '(UTC-05:00) Eastern Time (US & Canada)';
  final TextEditingController _dateFormatController = TextEditingController(text: 'MM/DD/YYYY');

  final List<String> _passwordPolicies = [
    'Default',
    'Strong',
    'Custom',
  ];

  final List<String> _timeZones = [
    '(UTC-05:00) Eastern Time (US & Canada)',
    '(UTC+00:00) London',
    '(UTC+01:00) Berlin',
    '(UTC+05:30) India Standard Time',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF0A2B4B)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Security', style: TextStyle(color: Color(0xFF0A2B4B), fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Security', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Color(0xFF0A2B4B))),
                    const SizedBox(height: 32),
                    const Text('Password Policy', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF0A2B4B))),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: _selectedPasswordPolicy,
                      items: _passwordPolicies.map((policy) => DropdownMenuItem(child: Text(policy), value: policy)).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedPasswordPolicy = value!;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Two-Factor Authentication', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF0A2B4B))),
                        Switch(
                          value: _twoFactorEnabled,
                          onChanged: (value) {
                            setState(() {
                              _twoFactorEnabled = value;
                            });
                          },
                          activeColor: const Color(0xFF0A2B4B),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text('Time Zone', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF0A2B4B))),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: _selectedTimeZone,
                      items: _timeZones.map((zone) => DropdownMenuItem(child: Text(zone), value: zone)).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedTimeZone = value!;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Date Format', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF0A2B4B))),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _dateFormatController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 36),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 120,
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0A2B4B),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            onPressed: () {
                              // Save logic here
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Settings saved!')));
                              Navigator.of(context).pop();
                            },
                            child: const Text('Save', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const SizedBox(width: 24),
                        SizedBox(
                          width: 120,
                          height: 48,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xFF0A2B4B), width: 2),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF0A2B4B))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}