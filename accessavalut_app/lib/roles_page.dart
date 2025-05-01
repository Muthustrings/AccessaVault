import 'package:flutter/material.dart';

class RolesPage extends StatefulWidget {
  const RolesPage({Key? key}) : super(key: key);

  @override
  State<RolesPage> createState() => _RolesPageState();
}

class _RolesPageState extends State<RolesPage> {
  bool _showAddRoleDialog = false;

  final TextEditingController _roleNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _roleNameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _openAddRoleDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: SizedBox(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Add Role',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A2B4B),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, size: 28, color: Color(0xFF0A2B4B)),
                      onPressed: () {
                        Navigator.of(context).pop();
                        _closeAddRoleDialog();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const Text('Role Name', style: TextStyle(fontSize: 22, color: Color(0xFF111827), fontWeight: FontWeight.w500)),
                const SizedBox(height: 8),
                TextField(
                  controller: _roleNameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF9FAFB),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  ),
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 24),
                const Text('Description', style: TextStyle(fontSize: 22, color: Color(0xFF111827), fontWeight: FontWeight.w500)),
                const SizedBox(height: 8),
                TextField(
                  controller: _descriptionController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF9FAFB),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  ),
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0A2B4B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 18),
                      ),
                      onPressed: () {
                        // TODO: Add logic to create role
                        Navigator.of(context).pop();
                        _closeAddRoleDialog();
                      },
                      child: const Text(
                        'Create',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _closeAddRoleDialog() {
    setState(() {
      _showAddRoleDialog = false;
      _roleNameController.clear();
      _descriptionController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xFFF9FAFB),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Roles',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A2B4B),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0A2B4B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                      ),
                      onPressed: _openAddRoleDialog,
                      child: const Text(
                        '+ Add Role',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Table(
                    columnWidths: const {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(3),
                      2: FlexColumnWidth(1),
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
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                            child: Text('Users', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151))),
                          ),
                        ],
                      ),
                      _roleRow('Administrator', 'Full access to the system', '3'),
                      _roleRow('Manager', 'Manage users and groups', '7'),
                      _roleRow('Editor', 'Edit content', '12'),
                      _roleRow('Viewer', 'View content only', '25'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (_showAddRoleDialog)
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.1),
              child: Center(
                child: Container(
                  width: 500,
                  padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 24,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Add Role',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0A2B4B),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close, size: 28, color: Color(0xFF0A2B4B)),
                            onPressed: _closeAddRoleDialog,
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      const Text('Role Name', style: TextStyle(fontSize: 22, color: Color(0xFF111827), fontWeight: FontWeight.w500)),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _roleNameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFF9FAFB),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                        ),
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 24),
                      const Text('Description', style: TextStyle(fontSize: 22, color: Color(0xFF111827), fontWeight: FontWeight.w500)),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _descriptionController,
                        maxLines: 3,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFF9FAFB),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                        ),
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0A2B4B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 18),
                            ),
                            onPressed: () {
                              // TODO: Add logic to create role
                              _closeAddRoleDialog();
                            },
                            child: const Text(
                              'Create',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
      ],
    );
  }

  TableRow _roleRow(String name, String description, String users) {
    return TableRow(
      decoration: const BoxDecoration(color: Colors.transparent),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Text(name, style: const TextStyle(fontSize: 17, color: Color(0xFF111827))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Text(description, style: const TextStyle(fontSize: 17, color: Color(0xFF6B7280))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Text(users, style: const TextStyle(fontSize: 17, color: Color(0xFF6B7280))),
        ),
      ],
    );
  }
}