// To parse required this JSON data, do
//
//     final transaction = transactionFromJson(jsonString);

import 'dart:convert';

Transaction transactionFromJson(String str) =>
    Transaction.fromJson(json.decode(str));

String transactionToJson(Transaction data) => json.encode(data.toJson());

class Transaction {
  Transaction({
    required this.dataDescription,
    required this.orderStatus,
    required this.statusObjects,
  });

  String dataDescription;
  String orderStatus;
  List<StatusObject> statusObjects;

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        dataDescription: json["data-description"],
        orderStatus: json["order-status"],
        statusObjects: List<StatusObject>.from(
            json["status-objects"].map((x) => StatusObject.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data-description": dataDescription,
        "order-status": orderStatus,
        "status-objects":
            List<dynamic>.from(statusObjects.map((x) => x.toJson())),
      };
}

class StatusObject {
  StatusObject({
    required this.type,
    required this.status,
    required this.date,
    required this.time,
  });

  String type;
  String status;
  DateTime date;
  String time;

  factory StatusObject.fromJson(Map<String, dynamic> json) => StatusObject(
        type: json["type"],
        status: json["status"],
        date: DateTime.parse(json["date"]),
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "status": status,
        "date": date.toIso8601String(),
        "time": time,
      };
}
