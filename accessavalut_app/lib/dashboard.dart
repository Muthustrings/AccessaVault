import 'package:flutter/material.dart';

import 'users_page.dart';
import 'roles_page.dart';
import 'groups_page.dart';
import 'settings_page.dart';

import 'common_colors.dart';
import 'common_text_styles.dart';

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
    GroupsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.card,
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 260,
            color: CommonColors.sidebarBg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: CommonColors.card,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'A',
                          style: CommonTextStyles.heading2,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Flexible(
                        child: Text(
                          'AccessaValut',
                          style: CommonTextStyles.sidebarTitle,
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
                Padding(
                  padding: const EdgeInsets.only(left: 24, bottom: 32, top: 0, right: 24),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      leading: const Icon(Icons.logout, color: CommonColors.logoutIcon),
                      title: const Text('Logout', style: CommonTextStyles.logout),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      onTap: () async {
                        final shouldLogout = await showDialog<bool>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Are you sure you want to Logout?'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(false),
                                child: const Text('No'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                                child: const Text('Yes'),
                              ),
                            ],
                          ),
                        );
                        if (shouldLogout == true) {
                          // Ensure dialog is closed before navigating
                          Navigator.of(context, rootNavigator: true).pushReplacementNamed('/login');
                        }
                      },
                    ),
                  ),
                ),
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
              color: Colors.black.withOpacity(0.1),
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
    int totalUsers = 4;
    int activeUsers = 0;
    int totalRoles = 4;
    int totalGroups = 4;

    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 900;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: constraints.maxWidth),
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
                        'Dashboard',
                        style: CommonTextStyles.heading1,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  isNarrow
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _StatCard(title: 'TOTAL USERS', value: totalUsers.toString()),
                              const SizedBox(width: 16),
                              _StatCard(title: 'ACTIVE USERS', value: activeUsers.toString()),
                              const SizedBox(width: 16),
                              _StatCard(title: 'ROLES', value: totalRoles.toString()),
                              const SizedBox(width: 16),
                              _StatCard(title: 'GROUPS', value: totalGroups.toString()),
                            ],
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _StatCard(title: 'TOTAL USERS', value: totalUsers.toString()),
                            _StatCard(title: 'ACTIVE USERS', value: activeUsers.toString()),
                            _StatCard(title: 'ROLES', value: totalRoles.toString()),
                            _StatCard(title: 'GROUPS', value: totalGroups.toString()),
                          ],
                        ),
                ],
              ),
            ),
          ),
        );
      },
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
        color: CommonColors.card,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: CommonColors.shadow,
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
            style: CommonTextStyles.cardTitle,
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Text(
              value,
              style: CommonTextStyles.cardValue,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}