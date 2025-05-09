import 'package:flutter/material.dart';
import 'add_group_page.dart';
import 'common_text_styles.dart';
import 'reusable_widgets.dart';
import 'backend/groups_api.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({Key? key}) : super(key: key);

  static int getGroupCount(BuildContext context) {
    final state = context.findAncestorStateOfType<_GroupsPageState>();
    return state?._groups.length ?? 0;
  }

  @override
  _GroupsPageState createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  List<Map<String, String>> _groups = [];

  @override
  void initState() {
    super.initState();
    _loadGroups();
  }

  Future<void> _loadGroups() async {
    try {
      final api = GroupsApiService();
      final fetchedGroups = await api.fetchGroups();
      setState(() {
        _groups = fetchedGroups.map((g) => {'name': g.name, 'description': g.description}).toList();
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load groups: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Removed logo and title Row here
            const SizedBox(height: 32),
            Text(
              'Groups',
              style: Theme.of(context).textTheme.displayLarge ?? CommonTextStyles.heading1(context),
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
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
                              final api = GroupsApiService();
                              await api.addGroup(GroupRequest(name: result['name']!, description: result['description']!));
                              _loadGroups();
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
                        ..._groups.map((group) => _groupRow(context, group['name'] ?? '', group['description'] ?? '')),
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

  static TableRow _groupRow(BuildContext context, String name, String description) {
    return TableRow(
      decoration: const BoxDecoration(color: Colors.transparent),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Text(name, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle(fontSize: 17, color: Color(0xFF111827), fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Row(
            children: [
              Text(description, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).hintColor) ?? const TextStyle(fontSize: 17, color: Color(0xFF6B7280))),
              const SizedBox(width: 12),
              Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.edit, color: Theme.of(context).colorScheme.primary),
                  tooltip: 'Edit',
                  onPressed: () async {
                    final result = await showDialog<Map<String, String>>(
                      context: context,
                      builder: (context) {
                        final TextEditingController nameController = TextEditingController(text: name);
                        final TextEditingController descController = TextEditingController(text: description);
                        return Dialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          child: SizedBox(
                            width: 500,
                            child: Padding(
                              padding: const EdgeInsets.all(32),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Edit Group', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold) ?? const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 24),
                                  Text('Group Name', style: Theme.of(context).textTheme.titleMedium ?? const TextStyle(fontSize: 18)),
                                  const SizedBox(height: 8),
                                  TextField(
                                    controller: nameController,
                                    decoration: const InputDecoration(hintText: 'Enter group name'),
                                  ),
                                  const SizedBox(height: 16),
                                  Text('Description', style: Theme.of(context).textTheme.titleMedium ?? const TextStyle(fontSize: 18)),
                                  const SizedBox(height: 8),
                                  TextField(
                                    controller: descController,
                                    decoration: const InputDecoration(hintText: 'Enter group description'),
                                  ),
                                  const SizedBox(height: 24),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop({
                                            'name': nameController.text,
                                            'description': descController.text,
                                          });
                                        },
                                        child: const Text('Save'),
                                      ),
                                      const SizedBox(width: 12),
                                      TextButton(
                                        onPressed: () => Navigator.of(context).pop(),
                                        child: const Text('Cancel'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                    if (result != null) {
                      // TODO: Save updated group to backend and refresh UI
                    }
                  },
                ),
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Theme.of(context).colorScheme.error),
                tooltip: 'Delete',
                onPressed: () {
                  // TODO: Implement delete group logic
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}