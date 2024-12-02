import 'package:flutter/material.dart';
import 'package:task_management/features/dashboard/presentation/widgets/dashboard_item_list.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(child: DashboardItemList());
  }
}
