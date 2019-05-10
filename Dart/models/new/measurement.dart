// To parse this JSON data, do
//
//     final measuerment = measuermentFromJson(jsonString);

import 'dart:convert';
import 'package:w4d_test/utils/double_convert.dart';

class Measurement {
  Unit us;
  Unit metric;

  Measurement({
    this.us,
    this.metric,
  });

  factory Measurement.fromRawJson(String str) => Measurement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Measurement.fromJson(Map<String, dynamic> json) => new Measurement(
    us: json["us"] == null ? null : Unit.fromJson(json["us"]),
    metric: json["metric"] == null ? null : Unit.fromJson(json["metric"]),
  );

  Map<String, dynamic> toJson() => {
    "us": us == null ? null : us.toJson(),
    "metric": metric == null ? null : metric.toJson(),
  };
}

class Unit {
  double amount;
  String unitShort;
  String unitLong;

  Unit({
    this.amount,
    this.unitShort,
    this.unitLong,
  });

  factory Unit.fromRawJson(String str) => Unit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Unit.fromJson(Map<String, dynamic> json) => new Unit(
    amount: json["amount"] == null ? null : Convert.dynamicToDouble(json["amount"]),
    unitShort: json["unitShort"] == null ? null : json["unitShort"],
    unitLong: json["unitLong"] == null ? null : json["unitLong"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount == null ? null : amount,
    "unitShort": unitShort == null ? null : unitShort,
    "unitLong": unitLong == null ? null : unitLong,
  };
}
