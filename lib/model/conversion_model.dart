import 'package:meta/meta.dart';
import 'dart:convert';

class ConversionModel {
  final Meta meta;
  final Data data;

  ConversionModel({
    required this.meta,
    required this.data,
  });

  factory ConversionModel.fromRawJson(String str) => ConversionModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConversionModel.fromJson(Map<String, dynamic> json) => ConversionModel(
    meta: Meta.fromJson(json["meta"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": data.toJson(),
  };
}

class Data {
  final Idr idr;

  Data({
    required this.idr,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    idr: Idr.fromJson(json["IDR"]),
  );

  Map<String, dynamic> toJson() => {
    "IDR": idr.toJson(),
  };
}

class Idr {
  final String code;
  final double value;

  Idr({
    required this.code,
    required this.value,
  });

  factory Idr.fromRawJson(String str) => Idr.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Idr.fromJson(Map<String, dynamic> json) => Idr(
    code: json["code"],
    value: json["value"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "value": value,
  };
}

class Meta {
  final DateTime lastUpdatedAt;

  Meta({
    required this.lastUpdatedAt,
  });

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    lastUpdatedAt: DateTime.parse(json["last_updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "last_updated_at": lastUpdatedAt.toIso8601String(),
  };
}
