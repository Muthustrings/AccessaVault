import 'package:flutter/material.dart';

class GeneralSettingsPage extends StatefulWidget {
  const GeneralSettingsPage({Key? key}) : super(key: key);

  @override
  State<GeneralSettingsPage> createState() => _GeneralSettingsPageState();
}

class _GeneralSettingsPageState extends State<GeneralSettingsPage> {
  final TextEditingController _companyNameController = TextEditingController(text: 'Example Corporation');
  String _selectedLanguage = 'English (United States)';
  String _selectedTimeZone = '(UTC-05:00) Eastern Time (U S Canada)';
  final TextEditingController _dateFormatController = TextEditingController(text: 'MM/DD/YYYY');

  final List<String> _languages = [
    'English (United States)',
    'Spanish (Spain)',
    'French (France)',
    'German (Germany)',
  ];

  final List<String> _timeZones = [
    '(UTC-05:00) Eastern Time (U S Canada)',
    '(UTC+00:00) London',
    '(UTC+01:00) Berlin',
    '(UTC+05:30) India Standard Time',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A2B4B),
        elevation: 0,
        title: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.shield, color: Color(0xFF0A2B4B)),
            ),
            const SizedBox(width: 12),
            const Text(
              'AccessaVault',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Container(
              width: 500,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color:  Colors.black.withOpacity(0.1),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'General',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A2B4B),
                    ),
                  ),
                  const SizedBox(height: 36),
                  const Text('Company Name', style: TextStyle(fontSize: 18, color: Color(0xFF223046), fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _companyNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text('Language', style: TextStyle(fontSize: 18, color: Color(0xFF223046), fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: _selectedLanguage,
                    items: _languages.map((lang) => DropdownMenuItem(value: lang, child: Text(lang))).toList(),
                    onChanged: (val) => setState(() => _selectedLanguage = val ?? _selectedLanguage),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text('Time Zone', style: TextStyle(fontSize: 18, color: Color(0xFF223046), fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: _selectedTimeZone,
                    items: _timeZones.map((tz) => DropdownMenuItem(value: tz, child: Text(tz))).toList(),
                    onChanged: (val) => setState(() => _selectedTimeZone = val ?? _selectedTimeZone),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text('Date Format', style: TextStyle(fontSize: 18, color: Color(0xFF223046), fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _dateFormatController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                  const SizedBox(height: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0A2B4B),
                          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () {
                          // Save logic here
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Settings saved!')),
                          );
                        },
                        child: const Text('Save', style: TextStyle(fontSize: 20)),
                      ),
                    ],
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