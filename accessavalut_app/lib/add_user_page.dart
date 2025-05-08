import 'package:flutter/material.dart';
import 'common_colors.dart';
import 'common_text_styles.dart';
import 'reusable_widgets.dart';

class AddUserPage extends StatefulWidget {
  final List<String> groupList;
  final List<String> roleList;
  final void Function(String username, String email, String password, String phone, String role, String status, String group)? onAdd;
  const AddUserPage({Key? key, required this.groupList, required this.roleList, this.onAdd}) : super(key: key);

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String? _role;
  String? _status;
  String? _group;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
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
        title: const Text('Add User', style: CommonTextStyles.heading2),
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
                    color: CommonColors.shadow,
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Add User', style: CommonTextStyles.heading2, textAlign: TextAlign.center),
                      const SizedBox(height: 32),
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(labelText: 'Username'),
                        validator: (value) => value == null || value.isEmpty ? 'Please enter username' : null,
                      ),
                      const SizedBox(height: 18),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(labelText: 'Email'),
                        validator: (value) => value == null || value.isEmpty ? 'Please enter email' : null,
                      ),
                      const SizedBox(height: 18),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(labelText: 'Password'),
                        obscureText: true,
                        validator: (value) => value == null || value.isEmpty ? 'Please enter password' : null,
                      ),
                      const SizedBox(height: 18),
                      TextFormField(
                        controller: _phoneController,
                        decoration: const InputDecoration(labelText: 'Phone'),
                        validator: (value) => value == null || value.isEmpty ? 'Please enter phone' : null,
                      ),
                      const SizedBox(height: 18),
                      DropdownButtonFormField<String>(
                        value: _role,
                        items: widget.roleList.map((role) => DropdownMenuItem(value: role, child: Text(role))).toList(),
                        onChanged: (value) => setState(() => _role = value),
                        decoration: const InputDecoration(labelText: 'Role'),
                        validator: (value) => value == null || value.isEmpty ? 'Please select role' : null,
                      ),
                      const SizedBox(height: 18),
                      DropdownButtonFormField<String>(
                        value: _group,
                        items: widget.groupList.map((group) => DropdownMenuItem(value: group, child: Text(group))).toList(),
                        onChanged: (value) => setState(() => _group = value),
                        decoration: const InputDecoration(labelText: 'Group'),
                        validator: (value) => value == null || value.isEmpty ? 'Please select group' : null,
                      ),
                      const SizedBox(height: 18),
                      DropdownButtonFormField<String>(
                        value: _status,
                        items: ['Active', 'Inactive'].map((status) => DropdownMenuItem(value: status, child: Text(status))).toList(),
                        onChanged: (value) => setState(() => _status = value),
                        decoration: const InputDecoration(labelText: 'Status'),
                        validator: (value) => value == null || value.isEmpty ? 'Please select status' : null,
                      ),
                      const SizedBox(height: 32),
                      Center(
                        child: SizedBox(
                          width: 180,
                          height: 48,
                          child: ReusableElevatedButton(
                            text: 'Add',
                            backgroundColor: CommonColors.primary,
                            borderRadius: 8,
                            textStyle: CommonTextStyles.cardTitle,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (widget.onAdd != null) {
                                  widget.onAdd!(
                                    _usernameController.text,
                                    _emailController.text,
                                    _passwordController.text,
                                    _phoneController.text,
                                    _role!,
                                    _status!,
                                    _group!,
                                  );
                                }
                                Navigator.of(context).pop();
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}