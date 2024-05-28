import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:expense_income/model/activity_model.dart';
import 'package:expense_income/model/conversion_model.dart';

class Network {
  final dio = Dio();
  final API_KEY = 'cur_live_KqAR6XPXyd4GXLjIWyLVbE404ou1uALl0yfHvNc7';

  Future<ConversionModel> conversionFetch() async {
    try {
      final call = await dio.get('https://api.currencyapi.com/v3/latest',
          queryParameters: {'currencies': 'IDR'},
          options: Options(headers: {'apikey': API_KEY}));
      final data = ConversionModel.fromJson(call.data);
      return data;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<ActivityModel>> fetchActivity() async {
    try {
      final call = await dio.get('https://bored-api.appbrewery.com/filter',
          queryParameters: {'type': 'busywork'});
      final List<dynamic> jsonData = call.data;
      return jsonData.map((json) => ActivityModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
