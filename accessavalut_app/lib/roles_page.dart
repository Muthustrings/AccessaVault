
import 'package:flutter/material.dart';

import 'common_colors.dart';

class RolesPage extends StatefulWidget {
  const RolesPage({Key? key}) : super(key: key);

  static int getRoleCount(BuildContext context) {
    final state = context.findAncestorStateOfType<_RolesPageState>();
    return state?._roles.length ?? 0;
  }

  @override
  State<RolesPage> createState() => _RolesPageState();
}

class _RolesPageState extends State<RolesPage> {
  List<RoleResponse> _roles = [
    RoleResponse(id: '1', name: 'Admin', description: 'Administrator role', users: 2),
    RoleResponse(id: '2', name: 'User', description: 'Regular user role', users: 5),
  ];
  bool _isLoading = false;
  String? _error;

  // Add/Edit Dialog Controllers
  final TextEditingController _roleNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String? _editingRoleId;

  @override
  void dispose() {
    _roleNameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _showRoleDialog({RoleResponse? role}) async {
    _roleNameController.text = role?.name ?? '';
    _descriptionController.text = role?.description ?? '';
    _editingRoleId = role?.id;
    final isEdit = role != null;
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(isEdit ? 'Edit Role' : 'Add Role', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        content: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _roleNameController,
                decoration: const InputDecoration(labelText: 'Role Name'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: CommonColors.primary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () async {
              final name = _roleNameController.text.trim();
              final desc = _descriptionController.text.trim();
              if (name.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Role name cannot be empty')));
                return;
              }
              Navigator.of(context).pop();
              if (isEdit) {
                await _updateRole(_editingRoleId!, name, desc);
              } else {
                await _addRole(name, desc);
              }
            },
            child: Text(isEdit ? 'Save' : 'Create'),
          ),
        ],
      ),
    );
    _roleNameController.clear();
    _descriptionController.clear();
    _editingRoleId = null;
  }

  Future<void> _addRole(String name, String description) async {
    setState(() {
      _roles.add(RoleResponse(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: name,
        description: description,
        users: 0,
      ));
    });
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Role created successfully')));
  }

  Future<void> _updateRole(String id, String name, String description) async {
    setState(() {
      final idx = _roles.indexWhere((r) => r.id == id);
      if (idx != -1) {
        _roles[idx] = RoleResponse(
          id: id,
          name: name,
          description: description,
          users: _roles[idx].users,
        );
      }
    });
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Role updated successfully')));
  }

  Future<void> _deleteRole(String id) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Role'),
        content: const Text('Are you sure you want to delete this role?'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text('Cancel')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    if (confirm == true) {
      setState(() {
        _roles.removeWhere((r) => r.id == id);
      });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Role deleted successfully')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Roles', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xFF0A2B4B))),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CommonColors.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                  ),
                  onPressed: () => _showRoleDialog(),
                  child: const Text('+ Add Role', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            const SizedBox(height: 32),
            if (_isLoading)
              const Center(child: CircularProgressIndicator()),
            if (_error != null)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(_error!, style: const TextStyle(color: Colors.red)),
              ),
            if (!_isLoading && _error == null)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: CommonColors.card,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: CommonColors.shadow, blurRadius: 8, offset: const Offset(0, 2)),
                    ],
                  ),
                  child: _roles.isEmpty
                      ? const Center(child: Text('No roles found.'))
                      : SingleChildScrollView(
                          child: DataTable(
                            columns: const [
                              DataColumn(label: Text('Name', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151)))),
                              DataColumn(label: Text('Description', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151)))),
                              DataColumn(label: Text('Users', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151)))),
                              DataColumn(label: Text('Actions', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151)))),
                            ],
                            rows: _roles.map((role) => DataRow(cells: [
                              DataCell(Text(role.name, style: const TextStyle(fontSize: 17, color: Color(0xFF111827)))),
                              DataCell(Text(role.description, style: const TextStyle(fontSize: 17, color: Color(0xFF6B7280)))),
                              DataCell(Text(role.users.toString(), style: const TextStyle(fontSize: 17, color: Color(0xFF6B7280)))),
                              DataCell(Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit, color: Color(0xFF2563EB)),
                                    tooltip: 'Edit',
                                    onPressed: () => _showRoleDialog(role: role),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete, color: Color(0xFFB91C1C)),
                                    tooltip: 'Delete',
                                    onPressed: () => _deleteRole(role.id),
                                  ),
                                ],
                              )),
                            ])).toList(),
                          ),
                        ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class RoleResponse {
  final String id;
  final String name;
  final String description;
  final int users;

  RoleResponse({required this.id, required this.name, required this.description, required this.users});
}