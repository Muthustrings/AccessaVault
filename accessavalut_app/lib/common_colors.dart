import 'package:flutter/material.dart';

class CommonColors {
  static Color primary(BuildContext context) => Theme.of(context).colorScheme.primary;
  static Color accent(BuildContext context) => Theme.of(context).colorScheme.background;
  static Color card(BuildContext context) => Theme.of(context).cardColor;
  static Color shadow(BuildContext context) => Theme.of(context).shadowColor;
  static Color textPrimary(BuildContext context) => Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
  static Color textSecondary(BuildContext context) => Theme.of(context).textTheme.bodyMedium?.color ?? Colors.grey;
  static Color sidebarBg(BuildContext context) => Theme.of(context).colorScheme.primary;
  static Color sidebarSelected(BuildContext context) => Theme.of(context).highlightColor;
  static Color sidebarIcon(BuildContext context) => Theme.of(context).iconTheme.color ?? Colors.white;
  static Color sidebarText(BuildContext context) => Theme.of(context).textTheme.bodyLarge?.color ?? Colors.white;
  static Color logoutIcon(BuildContext context) => Colors.white;
  static Color logoutText(BuildContext context) => Colors.white;
}