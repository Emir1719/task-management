import 'package:task_management/features/dashboard/data/models/dashboard_item.dart';
import 'package:task_management/features/dashboard/data/repositories/dashboard_repository.dart';

class DashboardService {
  final DashboardRepository repository;

  DashboardService(this.repository);

  List<DashboardItem> getDashboardItems() {
    return repository.fetchItems();
  }
}
