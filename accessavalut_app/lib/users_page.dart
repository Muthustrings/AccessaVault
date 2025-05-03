import 'package:flutter/material.dart';
import 'add_user_form.dart';
import 'common_colors.dart';
import 'common_text_styles.dart';
import 'reusable_widgets.dart';
class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List<Map<String, String>> users = [
    {
      'name': 'Tom Cook',
      'email': 'tom.cook@example.com',
      'role': 'Admin',
      'status': 'Active',
      'group': 'Marketing',
    },
    {
      'name': 'Lindsay Walton',
      'email': 'lindsay.walton@example.com',
      'role': 'User',
      'status': 'Active',
      'group': 'Sales',
    },
    {
      'name': 'Courtney Henry',
      'email': 'courtney.henry@example.com',
      'role': 'User',
      'status': 'Inactive',
      'group': 'Development',
    },
    {
      'name': 'Kathryn Murphy',
      'email': 'kathryn.murphy@example.com',
      'role': 'User',
      'status': 'Active',
      'group': 'Support',
    },
  ];

  List<Map<String, String>> _groups = [
    {'name': 'Marketing', 'description': 'Marketing'},
    {'name': 'Sales', 'description': 'Sales'},
    {'name': 'Development', 'description': 'Development'},
    {'name': 'Support', 'description': 'Support'},
  ];

  void _addUser(String name, String email, String role, String status, String group) {
    setState(() {
      users.add({
        'name': name,
        'email': email,
        'role': role,
        'status': status,
        'group': group,
      });
    });
  }

  void _editUser(int index, String name, String email, String role, String status, String group) {
    setState(() {
      users[index] = {
        'name': name,
        'email': email,
        'role': role,
        'status': status,
        'group': group,
      };
    });
  }

  void _deleteUser(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  // Show dialog for adding a new user
  void _showAddUserDialog() {
    showDialog(
      context: context,
      builder: (context) => AddUserForm(
        onAdd: (name, email, role, status, group) {
          _addUser(name, email, role, status, group);
        },
        groupList: _groups.map((g) => g['name'] ?? '').where((g) => g.isNotEmpty).toList(),
      ),
    );
  }

  void _showEditUserDialog(int index) {
    final user = users[index];
    showDialog(
      context: context,
      builder: (context) => AddUserForm(
        initialName: user['name'],
        initialEmail: user['email'],
        initialRole: user['role'],
        initialStatus: user['status'],
        initialGroup: user['group'],
        onAdd: (name, email, role, status, group) {
          _editUser(index, name, email, role, status, group);
        },
        groupList: _groups.map((g) => g['name'] ?? '').where((g) => g.isNotEmpty).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CommonColors.accent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Users',
              style: CommonTextStyles.heading1,
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: CommonColors.card,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Icon(Icons.search, color: CommonColors.textSecondary),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                SizedBox(
                  height: 48,
                  child: ReusableElevatedButton(
                    text: 'Add User',
                    onPressed: _showAddUserDialog,
                    backgroundColor: CommonColors.primary,
                    borderRadius: 8,
                    textStyle: CommonTextStyles.cardTitle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: CommonColors.card,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: CommonColors.shadow,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Name', style: CommonTextStyles.cardTitle),
                          ),
                          const SizedBox(width: 2),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Expanded(
                            child: Text('Role', style: CommonTextStyles.cardTitle),
                          ),
                          Expanded(
                            child: Text('Status', style: CommonTextStyles.cardTitle),
                          ),
                          const SizedBox(width: 48),
                        ],
                      ),
                    ),
                    const Divider(height: 1, thickness: 1, color: Color(0xFFF3F4F6)),
                    Expanded(
                      child: ListView.separated(
                        itemCount: users.length,
                        separatorBuilder: (context, index) => const Divider(height: 1, thickness: 1, color: Color(0xFFF3F4F6)),
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(user['name'] ?? '', style: CommonTextStyles.cardTitle.copyWith(color: CommonColors.textPrimary)),
                                      const SizedBox(height: 2),
                                      Text(user['email'] ?? '', style: CommonTextStyles.cardTitle.copyWith(color: CommonColors.textSecondary, fontSize: 15)),
                                    ],
                                  ),
                                ),
                                const Expanded(flex: 3, child: SizedBox()),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF3F4F6),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(user['role'] ?? '', style: CommonTextStyles.cardTitle.copyWith(fontWeight: FontWeight.w500, fontSize: 16)),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: (user['status'] == 'Active') ? const Color(0xFFD1FAE5) : const Color(0xFFF3F4F6),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      user['status'] ?? '',
                                      style: CommonTextStyles.cardTitle.copyWith(
                                        color: (user['status'] == 'Active') ? const Color(0xFF059669) : CommonColors.textSecondary,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.edit, color: CommonColors.primary),
                                      onPressed: () => _showEditUserDialog(index),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete, color: Color(0xFFB91C1C)),
                                      onPressed: () => _deleteUser(index),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
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
}