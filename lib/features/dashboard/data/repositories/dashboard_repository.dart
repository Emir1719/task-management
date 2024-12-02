import 'package:flutter/material.dart';
import 'package:task_management/features/dashboard/data/models/dashboard_item.dart';

class DashboardRepository {
  List<DashboardItem> fetchItems() {
    return [
      DashboardItem(title: 'Analytics', icon: Icons.analytics),
      DashboardItem(title: 'Users', icon: Icons.people),
      DashboardItem(title: 'Settings', icon: Icons.settings),
    ];
  }
}
