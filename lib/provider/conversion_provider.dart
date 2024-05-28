import 'package:expense_income/conversion_repo.dart';
import 'package:expense_income/model/conversion_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'conversion_provider.g.dart';

@riverpod
class ConversionAmount extends _$ConversionAmount {
  @override
  int build() {
    return 0;
  }

  void setAmount(int amount) {
    state = amount;
  }
}

@riverpod
class ConversionDirection extends _$ConversionDirection {
  @override
  bool build() {
    return false;
  }

  void toggleDirection() {
    state = !state;
  }
}

@riverpod
ConversionRepo repository(RepositoryRef ref) {
  return ConversionRepo();
}


@riverpod
Future<ConversionModel> getCurrencies(GetCurrenciesRef ref) async {
  final repository = ref.read(repositoryProvider);
  return await repository.getCurrencies();
}