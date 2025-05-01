import 'package:flutter/material.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF9FAFB),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Removed logo and title Row here
            const SizedBox(height: 32),
            const Text(
              'Groups',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search, color: Color(0xFF6B7280)),
                              hintText: 'Search groups',
                              filled: true,
                              fillColor: const Color(0xFFF9FAFB),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0A2B4B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                          ),
                          onPressed: () {},
                          child: const Text(
                            '+ Add Group',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Table(
                      columnWidths: const {
                        0: FlexColumnWidth(2),
                        1: FlexColumnWidth(3),
                      },
                      border: TableBorder.symmetric(
                        inside: const BorderSide(color: Color(0xFFE5E7EB)),
                        outside: BorderSide.none,
                      ),
                      children: [
                        const TableRow(
                          decoration: BoxDecoration(color: Color(0xFFF3F4F6)),
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                              child: Text('Name', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151))),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                              child: Text('Description', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151))),
                            ),
                          ],
                        ),
                        _groupRow('Marketing', 'Marketing Team'),
                        _groupRow('Sales', 'Sales Team'),
                        _groupRow('Development', 'Development Team'),
                        _groupRow('Support', 'Support Team'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static TableRow _groupRow(String name, String description) {
    return TableRow(
      decoration: const BoxDecoration(color: Colors.transparent),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Text(name, style: const TextStyle(fontSize: 17, color: Color(0xFF111827), fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Text(description, style: const TextStyle(fontSize: 17, color: Color(0xFF6B7280))),
        ),
      ],
    );
  }
}