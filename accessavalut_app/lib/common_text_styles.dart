import 'package:flutter/material.dart';

class CommonTextStyles {
  static const TextStyle heading1 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Color(0xFF0A2B4B),
  );
  static const TextStyle heading2 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Color(0xFF0A2B4B),
  );
  static const TextStyle cardTitle = TextStyle(
    color: Color(0xFF6B7280),
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static const TextStyle cardValue = TextStyle(
    color: Color(0xFF0A2B4B),
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
  static const TextStyle sidebarTitle = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );
  static const TextStyle sidebarItem = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle logout = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}