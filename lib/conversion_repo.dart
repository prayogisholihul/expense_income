import 'package:expense_income/network.dart';

import 'model/conversion_model.dart';

class ConversionRepo {
  final network = Network();

  Future<ConversionModel> getCurrencies() => network.conversionFetch();
}