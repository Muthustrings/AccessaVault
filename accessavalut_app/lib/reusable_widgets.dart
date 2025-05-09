import 'package:flutter/material.dart';
import 'common_colors.dart';
import 'common_text_styles.dart';

class ReusableSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final IconData icon;
  final ValueChanged<String>? onChanged;

  const ReusableSearchField({
    Key? key,
    this.controller,
    this.hintText = 'Search',
    this.icon = Icons.search,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: CommonColors.textSecondary(context)),
        hintText: hintText,
        filled: true,
        fillColor: CommonColors.accent(context),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      ),
    );
  }
}

class ReusableElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final TextStyle? textStyle;

  const ReusableElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF0A2B4B),
    this.padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
    this.borderRadius = 10,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle ?? CommonTextStyles.heading2(context),
      ),
    );
  }
}

class ReusableTableHeader extends StatelessWidget {
  final List<String> headers;
  final List<FlexColumnWidth> columnWidths;

  const ReusableTableHeader({
    Key? key,
    required this.headers,
    required this.columnWidths,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: Map.fromIterables(
        List.generate(columnWidths.length, (i) => i),
        columnWidths,
      ),
      border: TableBorder.symmetric(
        inside: const BorderSide(color: Color(0xFFE5E7EB)),
        outside: BorderSide.none,
      ),
      children: [
        TableRow(
          decoration: const BoxDecoration(color: Color(0xFFF3F4F6)),
          children: headers
              .map((header) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                    child: Text(header, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF374151))),
                  ))
              .toList(),
        ),
      ],
    );
  }
}