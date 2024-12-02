import 'package:flutter/material.dart';
import 'package:task_management/features/dashboard/data/models/screen_size.dart';
import 'package:task_management/features/dashboard/presentation/pages/dashboard_desktop_view.dart';
import 'package:task_management/features/dashboard/presentation/pages/dashboard_mobile_view.dart';
import 'package:task_management/features/dashboard/presentation/pages/dashboard_tablet_view.dart';
import 'package:task_management/features/dashboard/presentation/widgets/dashboard_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = getScreenSize(MediaQuery.of(context).size.width) != ScreenSize.desktop;

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      drawer: width ? const DashboardDrawer() : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          ScreenSize screenSize = getScreenSize(constraints.maxWidth);

          // Use different layouts based on screen size
          switch (screenSize) {
            case ScreenSize.mobile:
              return const DashboardMobileView();
            case ScreenSize.tablet:
              return const DashboardTabletView();
            case ScreenSize.desktop:
              return const DashboardDesktopView();
          }
        },
      ),
    );
  }
}
