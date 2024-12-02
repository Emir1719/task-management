import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/core/config/dependeny_injection.dart';
import 'package:task_management/core/theme/app_color_scheme.dart';
import 'package:task_management/core/theme/app_theme.dart';
import 'package:task_management/features/dashboard/presentation/pages/dashboard_view.dart';

void main() async {
  await setup();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(AppColorScheme.light).theme(),
      home: const DashboardView(),
    );
  }
}
