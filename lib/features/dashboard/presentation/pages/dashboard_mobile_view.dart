import 'package:flutter/material.dart';

class DashboardMobileView extends StatelessWidget {
  const DashboardMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Mobile layout: Drawer + ListView
        Expanded(
          child: Text("Mobile"),
        ),
      ],
    );
  }
}
