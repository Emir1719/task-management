import 'package:get_it/get_it.dart';
import 'package:task_management/features/dashboard/data/repositories/dashboard_repository.dart';
import 'package:task_management/features/dashboard/domain/repositories/dashboard_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerLazySingleton(() => DashboardRepository());
  getIt.registerLazySingleton(() => DashboardService(getIt<DashboardRepository>()));
}
