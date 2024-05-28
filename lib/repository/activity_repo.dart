import 'package:expense_income/model/activity_model.dart';
import 'package:expense_income/source/network.dart';

class ActivityRepo {
  final network = Network();

  Future<List<ActivityModel>> fetchActivity() => network.fetchActivity();
}