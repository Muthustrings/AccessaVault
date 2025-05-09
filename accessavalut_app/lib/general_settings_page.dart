import 'package:flutter/material.dart';
import 'common_colors.dart';
import 'common_text_styles.dart';

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
      backgroundColor: CommonColors.accent(context),
      appBar: AppBar(
        backgroundColor: CommonColors.card(context),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: CommonColors.primary(context)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('General', style: CommonTextStyles.heading2(context)),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
            child: Container(
              width: 500,
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
              child: Padding(
                padding: const EdgeInsets.all(36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'General',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A2B4B),
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text('Company Name', style: TextStyle(fontSize: 20, color: Color(0xFF0A2B4B), fontWeight: FontWeight.w500)),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _companyNameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Language', style: TextStyle(fontSize: 20, color: Color(0xFF0A2B4B), fontWeight: FontWeight.w500)),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: _selectedLanguage,
                      items: _languages.map((lang) => DropdownMenuItem(value: lang, child: Text(lang))).toList(),
                      onChanged: (val) => setState(() => _selectedLanguage = val ?? _selectedLanguage),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Time Zone', style: TextStyle(fontSize: 20, color: Color(0xFF0A2B4B), fontWeight: FontWeight.w500)),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: _selectedTimeZone,
                      items: _timeZones.map((tz) => DropdownMenuItem(value: tz, child: Text(tz))).toList(),
                      onChanged: (val) => setState(() => _selectedTimeZone = val ?? _selectedTimeZone),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Date Format', style: TextStyle(fontSize: 20, color: Color(0xFF0A2B4B), fontWeight: FontWeight.w500)),
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
                            },
                            child: const Text('Save', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const SizedBox(width: 16),
                        SizedBox(
                          width: 120,
                          height: 48,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xFF0A2B4B)),
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