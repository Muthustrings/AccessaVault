import 'package:flutter/material.dart';
import 'add_user_form.dart';

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
      ),
    );
  }

  // Show dialog for editing an existing user
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
      ),
    );
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
            const Text(
              'Users',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Icon(Icons.search, color: Color(0xFF6B7280)),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: 'Search users',
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
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0A2B4B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                    ),
                    onPressed: _showAddUserDialog,
                    child: const Text(
                      'Add User',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                      child: Row(
                        children: const [
                          Expanded(
                            flex: 3,
                            child: Text('Name', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151))),
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text('Role', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151))),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text('Status', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151))),
                          ),
                          SizedBox(width: 48),
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
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        user['name']!,
                                        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF111827)),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        user['email']!,
                                        style: const TextStyle(fontSize: 15, color: Color(0xFF6B7280)),
                                      ),
                                    ],
                                  ),
                                ),
                                const Expanded(flex: 3, child: SizedBox()),
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF3F4F6),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        user['role']!,
                                        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF6B7280)),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                      decoration: BoxDecoration(
                                        color: user['status'] == 'Active' ? const Color(0xFFD1FAE5) : const Color(0xFFF3F4F6),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        user['status']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: user['status'] == 'Active' ? const Color(0xFF059669) : const Color(0xFF6B7280),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.edit, color: Color(0xFF0A2B4B)),
                                      tooltip: 'Edit',
                                      onPressed: () => _showEditUserDialog(index),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.delete, color: Color(0xFFB91C1C)),
                                      tooltip: 'Delete',
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