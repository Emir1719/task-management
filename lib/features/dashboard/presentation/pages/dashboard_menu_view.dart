import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management/core/config/context_extension.dart';
import 'package:task_management/features/dashboard/data/models/screen_size.dart';
import 'package:task_management/features/dashboard/presentation/providers/screen_notifier.dart';
import 'package:task_management/features/dashboard/presentation/widgets/dashboard_item_list.dart';

class DashboardMenuView extends ConsumerWidget {
  const DashboardMenuView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenSize screenSize = ref.watch(screenNotifierProvider);

    return screenSize == ScreenSize.desktop
        ? Container(
            width: context.width(0.15),
            color: context.color.surfaceContainerLowest,
            child: const DashboardItemList(),
          )
        : const SizedBox();
  }
}
