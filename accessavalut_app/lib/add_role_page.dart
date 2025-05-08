import 'package:flutter/material.dart';
import 'common_colors.dart';
import 'common_text_styles.dart';
import 'reusable_widgets.dart';

class AddRolePage extends StatefulWidget {
  const AddRolePage({super.key});

  @override
  _AddRolePageState createState() => _AddRolePageState();
}

class _AddRolePageState extends State<AddRolePage> {
  final TextEditingController _roleNameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  String? _selectedPermission;
  final List<String> _permissions = ['Read', 'Write', 'Delete'];

  @override
  void dispose() {
    _roleNameController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: CommonColors.card,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: CommonColors.primary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Add Role', style: CommonTextStyles.heading2),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                color: CommonColors.card,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x1A000000),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Role Name', style: CommonTextStyles.cardTitle),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _roleNameController,
                      decoration: InputDecoration(
                        hintText: 'Enter role name',
                        filled: true,
                        fillColor: CommonColors.accent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Description', style: CommonTextStyles.cardTitle),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _descController,
                      decoration: InputDecoration(
                        hintText: 'Enter role description',
                        filled: true,
                        fillColor: CommonColors.accent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Permissions', style: CommonTextStyles.cardTitle),
                    const SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      value: _selectedPermission,
                      items: _permissions
                          .map((perm) => DropdownMenuItem(
                                value: perm,
                                child: Text(perm),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedPermission = value;
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: CommonColors.accent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ReusableElevatedButton(
                          text: 'Add Role',
                          onPressed: () {
                            if (_roleNameController.text.isNotEmpty && _descController.text.isNotEmpty && _selectedPermission != null) {
                              Navigator.of(context).pop({
                                'roleName': _roleNameController.text,
                                'description': _descController.text,
                                'permission': _selectedPermission,
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Please fill all fields and select a permission.')),
                              );
                            }
                          },
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