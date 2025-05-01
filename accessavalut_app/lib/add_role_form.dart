// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...
class _AddRoleFormState extends State<AddRoleForm> {
  // ... existing code ...
  Map<String, bool> _permissions = {
    'Read': false,
    'Write': false,
    'Delete': false,
  };

  // ... existing code ...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Add Role',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            // ... existing form fields ...
            const SizedBox(height: 24),
            const Text(
              'Permissions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A2B4B),
              ),
            ),
            ..._permissions.keys.map((perm) => CheckboxListTile(
                  title: Text(perm),
                  value: _permissions[perm],
                  onChanged: (bool? value) {
                    setState(() {
                      _permissions[perm] = value ?? false;
                    });
                  },
                )),
            // ... rest of your form ...
          ],
        ),
      ),
    );
  }
}
// ... existing code ...