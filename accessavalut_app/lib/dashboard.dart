import 'package:flutter/material.dart';

import 'users_page.dart';
import 'roles_page.dart';
import 'groups_page.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // Dashboard main content
    _DashboardMainContent(),
    UsersPage(),
    RolesPage(),
    GroupsPage(), // <-- Make sure this is here!
    Center(child: Text('Settings page coming soon...', style: TextStyle(fontSize: 24, color: Colors.grey))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 260,
            color: const Color(0xFF0A2B4B),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'A',
                          style: TextStyle(
                            color: Color(0xFF0A2B4B),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'AccessaVault',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                _SidebarItem(icon: Icons.dashboard, label: 'Dashboard', selected: _selectedIndex == 0, onTap: () { setState(() { _selectedIndex = 0; }); }),
                _SidebarItem(icon: Icons.person_outline, label: 'Users', selected: _selectedIndex == 1, onTap: () { setState(() { _selectedIndex = 1; }); }),
                _SidebarItem(icon: Icons.account_tree_outlined, label: 'Roles', selected: _selectedIndex == 2, onTap: () { setState(() { _selectedIndex = 2; }); }),
                _SidebarItem(icon: Icons.groups_outlined, label: 'Groups', selected: _selectedIndex == 3, onTap: () { setState(() { _selectedIndex = 3; }); }),
                _SidebarItem(icon: Icons.settings_outlined, label: 'Settings', selected: _selectedIndex == 4, onTap: () { setState(() { _selectedIndex = 4; }); }),
                const Spacer(),
              ],
            ),
          ),
          // Main Area
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: _pages, // <-- Use the _pages list here!
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback? onTap;
  const _SidebarItem({required this.icon, required this.label, this.selected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: selected
          ? BoxDecoration(
              color: Colors.white.withOpacity(0.08),
              borderRadius: BorderRadius.circular(10),
            )
          : null,
      child: ListTile(
        leading: Icon(icon, color: Colors.white, size: 26),
        title: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        onTap: onTap,
      ),
    );
  }
}

class _DashboardMainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0A2B4B),
            ),
          ),
          const SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _StatCard(title: 'TOTAL USERS', value: '152'),
              const SizedBox(width: 32),
              _StatCard(title: 'ACTIVE USERS', value: '124'),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _StatCard(title: 'ROLES', value: '8'),
              const SizedBox(width: 32),
              _StatCard(title: 'GROUPS', value: '5'),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  const _StatCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      // Remove fixed height to allow flexible sizing
      // height: 120,
      constraints: BoxConstraints(minHeight: 100),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF6B7280),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Text(
              value,
              style: const TextStyle(
                color: Color(0xFF0A2B4B),
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}