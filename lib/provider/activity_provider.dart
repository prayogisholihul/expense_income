import 'package:expense_income/model/activity_model.dart';
import 'package:expense_income/repository/activity_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'activity_provider.g.dart';

@riverpod
ActivityRepo repository(RepositoryRef ref) {
  return ActivityRepo();
}

@riverpod
Future<List<ActivityModel>> fetchActivity(FetchActivityRef ref) async {
  final repository = ref.read(repositoryProvider);
  return await repository.fetchActivity();
}
