import 'package:flutter/material.dart';
import 'package:task_management/core/config/dependeny_injection.dart';
import 'package:task_management/features/dashboard/domain/repositories/dashboard_service.dart';
import 'package:task_management/features/dashboard/presentation/widgets/dashboard_card.dart';

class DashboardItemList extends StatelessWidget {
  const DashboardItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = getIt<DashboardService>().getDashboardItems();

    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return DashboardCard(item: items[index]);
        },
      ),
    );
  }
}
