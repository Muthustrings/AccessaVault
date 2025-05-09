import 'package:flutter/material.dart';

class CommonTextStyles {
  static TextStyle heading1(BuildContext context) => Theme.of(context).textTheme.displayLarge ?? const TextStyle(fontSize: 48, fontWeight: FontWeight.bold);
  static TextStyle heading2(BuildContext context) => Theme.of(context).textTheme.headlineLarge ?? const TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  static TextStyle cardTitle(BuildContext context) => Theme.of(context).textTheme.titleMedium ?? const TextStyle(fontWeight: FontWeight.w600, fontSize: 18);
  static TextStyle cardValue(BuildContext context) => Theme.of(context).textTheme.displayMedium ?? const TextStyle(fontWeight: FontWeight.bold, fontSize: 40);
  static TextStyle sidebarTitle(BuildContext context) => Theme.of(context).textTheme.titleLarge ?? const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);
  static TextStyle sidebarItem(BuildContext context) => Theme.of(context).textTheme.titleMedium ?? const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  static TextStyle logout(BuildContext context) => Theme.of(context).textTheme.titleMedium ?? const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
}