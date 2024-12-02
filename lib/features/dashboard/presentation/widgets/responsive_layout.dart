// Responsive Layout
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Adjust layout for different screen sizes
    if (MediaQuery.of(context).size.width > 600) {
      return Row(
        children: [
          Expanded(child: child),
        ],
      );
    }
    return child;
  }
}
