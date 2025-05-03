import 'package:flutter/material.dart';
import 'add_group_page.dart';
import 'common_colors.dart';
import 'common_text_styles.dart';
import 'reusable_widgets.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  _GroupsPageState createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  List<Map<String, String>> _groups = [
    {'name': 'Marketing', 'description': 'Marketing Team'},
    {'name': 'Sales', 'description': 'Sales Team'},
    {'name': 'Development', 'description': 'Development Team'},
    {'name': 'Support', 'description': 'Support Team'},
  ];

  @override
  void initState() {
    super.initState();
    // No need to load groups from storage
  }

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
              style: CommonTextStyles.heading1,
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: CommonColors.card,
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
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ReusableSearchField(
                            hintText: 'Search groups',
                          ),
                        ),
                        const SizedBox(width: 16),
                        ReusableElevatedButton(
                          text: '+ Add Group',
                          onPressed: () async {
                            final result = await Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const AddGroupPage()),
                            );
                            if (result != null && result is Map<String, String>) {
                              setState(() {
                                _groups.add(result);
                              });
                            }
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    ReusableTableHeader(
                      headers: const ['Name', 'Description'],
                      columnWidths: const [FlexColumnWidth(2), FlexColumnWidth(3)],
                    ),
                    Table(
                      columnWidths: const {
                        0: FlexColumnWidth(2),
                        1: FlexColumnWidth(3),
                      },
                      children: [
                        ..._groups.map((group) => _groupRow(group['name'] ?? '', group['description'] ?? '')),
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