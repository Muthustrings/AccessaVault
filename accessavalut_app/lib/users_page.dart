import 'package:flutter/material.dart';
import 'add_user_form.dart';
import 'common_colors.dart';
import 'common_text_styles.dart';
import 'reusable_widgets.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  static int getUserCount(BuildContext context) {
    final state = context.findAncestorStateOfType<_UsersPageState>();
    return state?.users.length ?? 0;
  }

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List<Map<String, String>> users = [];
  List<Map<String, String>> _groups = [];
  List<String> _roles = ['Admin', 'User', 'Manager'];

  void _addUser(String username, String email, String password, String phone, String role, String status, String group) {
    setState(() {
      users.add({
        'username': username,
        'email': email,
        'password': password,
        'phone': phone,
        'role': role,
        'status': status,
        'group': group,
      });
    });
  }

  void _editUser(int index, String username, String email, String password, String phone, String role, String status, String group) {
    setState(() {
      users[index] = {
        'username': username,
        'email': email,
        'password': password,
        'phone': phone,
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

  void _showAddUserDialog() {
    showDialog(
      context: context,
      builder: (context) => AddUserForm(
        onAdd: (username, email, password, phone, role, status, group) {
          _addUser(username, email, password, phone, role, status, group);
        },
        groupList: _groups.map((g) => g['name'] ?? '').toList(),
        roleList: _roles,
      ),
    );
  }

  void _showEditUserDialog(int index) {
    final user = users[index];
    showDialog(
      context: context,
      builder: (context) => AddUserForm(
        onAdd: (username, email, password, phone, role, status, group) {
          _editUser(index, username, email, password, phone, role, status, group);
        },
        initialUsername: user['username'],
        initialEmail: user['email'],
        initialPassword: user['password'],
        initialPhone: user['phone'],
        initialRole: user['role'],
        initialStatus: user['status'],
        initialGroup: user['group'],
        groupList: _groups.map((g) => g['name'] ?? '').toList(),
        roleList: _roles,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CommonColors.accent(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Users',
              style: CommonTextStyles.heading1(context),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: CommonColors.card(context),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
child: Icon(Icons.search, color: Colors.grey),
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
                    backgroundColor: CommonColors.primary(context),
                    borderRadius: 8,
                    textStyle: CommonTextStyles.cardTitle(context),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Expanded(
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
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Name', style: CommonTextStyles.cardTitle(context)),
                          ),
                          const SizedBox(width: 2),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Expanded(
                            child: Text('Role', style: CommonTextStyles.cardTitle(context)),
                          ),
                          Expanded(
                            child: Text('Status', style: CommonTextStyles.cardTitle(context)),
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
                                      Text(user['username'] ?? '', style: CommonTextStyles.cardTitle(context).copyWith(color: CommonColors.textPrimary(context))),
                                      SizedBox(height: 2),
                                      Text(user['email'] ?? '', style: CommonTextStyles.cardTitle(context).copyWith(color: CommonColors.textSecondary(context), fontSize: 15)),
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
                                    child: Text(user['role'] ?? '', style: CommonTextStyles.cardTitle(context).copyWith(fontWeight: FontWeight.w500, fontSize: 16)),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: user['status'] == 'Active' ? const Color(0xFFECFDF5) : const Color(0xFFF3F4F6),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      user['status'] ?? '',
                                      style: CommonTextStyles.cardTitle(context).copyWith(
color: (user['status'] == 'Active') ? Colors.green : CommonColors.textSecondary(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.edit, color: CommonColors.primary(context)),
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

  @override
  void initState() {
    super.initState();
    // Optionally, initialize with some dummy data
    _groups = [
      {'name': 'Group A', 'description': 'First group'},
      {'name': 'Group B', 'description': 'Second group'},
    ];
    users = [
      {
        'username': 'johndoe',
        'email': 'john@example.com',
        'password': 'password',
        'phone': '1234567890',
        'role': 'Admin',
        'status': 'Active',
        'group': 'Group A',
      },
    ];
  }
}