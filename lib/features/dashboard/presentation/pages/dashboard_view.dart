import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/features/dashboard/data/models/screen_size.dart';
import 'package:task_management/features/dashboard/presentation/pages/dashboard_main_view.dart';
import 'package:task_management/features/dashboard/presentation/pages/dashboard_menu_view.dart';
import 'package:task_management/features/dashboard/presentation/providers/screen_notifier.dart';
import 'package:task_management/features/dashboard/presentation/widgets/dashboard_drawer.dart';

class DashboardView extends ConsumerWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenSize screenSize = ref.watch(screenNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      drawer: screenSize != ScreenSize.desktop ? const DashboardDrawer() : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Post frame callback ile provider'ı güncelliyoruz
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(screenNotifierProvider.notifier).changeScreenType(constraints.maxWidth);
          });

          return const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardMenuView(),
              DashboardMainView(),
            ],
          );
        },
      ),
    );
  }
}
