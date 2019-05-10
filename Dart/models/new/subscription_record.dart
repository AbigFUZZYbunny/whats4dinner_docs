// To parse this JSON data, do
//
//     final subscriptionRecord = subscriptionRecordFromJson(jsonString);

import 'dart:convert';

class SubscriptionRecord {
  int subscriptionLevel;
  DateTime startDate;
  DateTime endDate;

  SubscriptionRecord({
    this.subscriptionLevel,
    this.startDate,
    this.endDate,
  });

  factory SubscriptionRecord.fromRawJson(String str) => SubscriptionRecord.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscriptionRecord.fromJson(Map<String, dynamic> json) => new SubscriptionRecord(
    subscriptionLevel: json["SubscriptionLevel"] == null ? null : json["SubscriptionLevel"],
    startDate: json["StartDate"] == null ? null : DateTime.parse(json["StartDate"]),
    endDate: json["EndDate"] == null ? null : DateTime.parse(json["EndDate"]),
  );

  Map<String, dynamic> toJson() => {
    "SubscriptionLevel": subscriptionLevel == null ? null : subscriptionLevel,
    "StartDate": startDate == null ? null : startDate.toIso8601String(),
    "EndDate": endDate == null ? null : endDate.toIso8601String(),
  };
}
