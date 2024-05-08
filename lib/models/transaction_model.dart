import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TransactionRecord {
  String address;
  double amount;
  String description;
  int timeStamp;

  TransactionRecord({
    required this.address,
    required this.amount,
    required this.description,
    required this.timeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'amount': amount,
      'description': description,
      'timeStamp': timeStamp,
    };
  }

  factory TransactionRecord.fromMap(Map<String, dynamic> map) {
    return TransactionRecord(
      address: map['address'] as String,
      amount: map['amount'] as double,
      description: map['description'] as String,
      timeStamp: map['timeStamp'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory TransactionRecord.fromJson(String source) =>
      TransactionRecord.fromMap(json.decode(source) as Map<String, dynamic>);

  TransactionRecord copyWith({
    String? address,
    double? amount,
    String? description,
    int? timeStamp,
  }) {
    return TransactionRecord(
      address: address ?? this.address,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      timeStamp: timeStamp ?? this.timeStamp,
    );
  }
}
