import 'package:flutter/material.dart';
import 'package:task_management/features/dashboard/data/models/dashboard_item.dart';

class DashboardCard extends StatelessWidget {
  final DashboardItem item;

  const DashboardCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(item.icon),
      title: Text(item.title),
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      onTap: () {
        // Handle item tap
      },
    );
  }
}
