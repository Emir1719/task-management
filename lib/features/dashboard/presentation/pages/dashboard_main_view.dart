import 'package:flutter/material.dart';
import 'package:task_management/core/constant/app_padding.dart';

class DashboardMainView extends StatelessWidget {
  const DashboardMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPadding.main,
      child: Text("Desktop"),
    );
  }
}
