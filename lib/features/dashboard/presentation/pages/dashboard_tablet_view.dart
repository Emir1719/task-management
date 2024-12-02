import 'package:flutter/material.dart';

class DashboardTabletView extends StatelessWidget {
  const DashboardTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Tablet layout: Drawer + ListView
        Expanded(
          child: Text("Tablet"),
        ),
      ],
    );
  }
}
