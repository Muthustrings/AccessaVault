import 'package:flutter/material.dart';

class AddGroupPage extends StatelessWidget {
  const AddGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF0A2B4B)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Add Group', style: TextStyle(color: Color(0xFF0A2B4B), fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color:  Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(36),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.group_add, color: Color(0xFF0A2B4B), size: 36),
                        const SizedBox(width: 12),
                        const Text('Add Group', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xFF0A2B4B))),
                      ],
                    ),
                    const SizedBox(height: 32),
                    const Text('Group Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF0A2B4B))),
                    const SizedBox(height: 8),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Description', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF0A2B4B))),
                    const SizedBox(height: 8),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Assign Roles', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF0A2B4B))),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(child: Text('Role 1'), value: 'Role 1'),
                        DropdownMenuItem(child: Text('Role 2'), value: 'Role 2'),
                      ],
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Add Users', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF0A2B4B))),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(child: Text('User 1'), value: 'User 1'),
                        DropdownMenuItem(child: Text('User 2'), value: 'User 2'),
                      ],
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      ),
                    ),
                    const SizedBox(height: 36),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 120,
                          height: 48,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xFF0A2B4B)),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF0A2B4B))),
                          ),
                        ),
                        const SizedBox(width: 24),
                        SizedBox(
                          width: 120,
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0A2B4B),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Add', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}