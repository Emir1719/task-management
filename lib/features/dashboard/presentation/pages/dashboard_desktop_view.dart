import 'package:flutter/material.dart';
import 'package:task_management/core/config/context_extension.dart';
import 'package:task_management/features/dashboard/presentation/widgets/dashboard_item_list.dart';

class DashboardDesktopView extends StatelessWidget {
  const DashboardDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Desktop layout: Sidebar + Content
        Container(
          width: 250,
          color: context.color.surfaceContainerLowest,
          child: const DashboardItemList(),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Desktop"),
          ),
        ),
      ],
    );
  }
}
