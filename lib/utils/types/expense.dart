import 'package:fiestapp/utils/types/user.dart';

class LightExpenseDto {
  final String guid;
  final User payer;
  final String label;
  final double amount;

  LightExpenseDto({
    required this.guid,
    required this.payer,
    required this.label,
    required this.amount,
  });

  factory LightExpenseDto.fromJson(Map<String, dynamic> json) {
    return LightExpenseDto(
      guid: json['id'] as String,
      payer: User.fromJson(json['payer']),
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': guid,
      'payer': payer.toJson(),
      'label': label,
      'amount': amount,
    };
  }
}
