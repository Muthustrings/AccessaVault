import 'package:flutter/material.dart';

class AddUserForm extends StatefulWidget {
  final void Function(String name, String email, String role, String status)? onAdd;
  final String? initialName;
  final String? initialEmail;
  final String? initialRole;
  final String? initialStatus;
  const AddUserForm({Key? key, this.onAdd, this.initialName, this.initialEmail, this.initialRole, this.initialStatus}) : super(key: key);

  @override
  State<AddUserForm> createState() => _AddUserFormState();
}

class _AddUserFormState extends State<AddUserForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late String _role;
  late String _status;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName ?? '');
    _emailController = TextEditingController(text: widget.initialEmail ?? '');
    _role = widget.initialRole ?? 'User';
    _status = widget.initialStatus ?? 'Active';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Remove the AppBar or top Row with logo and AccessaVault
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text('Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF374151))),
            const SizedBox(height: 8),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              ),
              validator: (value) => value == null || value.isEmpty ? 'Enter name' : null,
            ),
            const SizedBox(height: 24),
            const Text('Email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF374151))),
            const SizedBox(height: 8),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              ),
              validator: (value) => value == null || value.isEmpty ? 'Enter email' : null,
            ),
            const SizedBox(height: 24),
            const Text('Role', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF374151))),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: _role,
              items: const [
                DropdownMenuItem(value: 'User', child: Text('User')),
                DropdownMenuItem(value: 'Admin', child: Text('Admin')),
              ],
              onChanged: (value) {
                setState(() {
                  _role = value ?? 'User';
                });
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Status', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF374151))),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: _status,
              items: const [
                DropdownMenuItem(value: 'Active', child: Text('Active')),
                DropdownMenuItem(value: 'Inactive', child: Text('Inactive')),
              ],
              onChanged: (value) {
                setState(() {
                  _status = value ?? 'Active';
                });
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0A2B4B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      widget.onAdd?.call(
                        _nameController.text,
                        _emailController.text,
                        _role,
                        _status,
                      );
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(widget.initialName != null ? 'Update User' : 'Add User', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}