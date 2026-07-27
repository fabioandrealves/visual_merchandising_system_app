import '../../domain/entities/installment.dart';

class InstallmentModel extends Installment {
  const InstallmentModel({
    required super.quantity,
    required super.amount,
  });

  factory InstallmentModel.fromJson(Map<String, dynamic> json) {
    return InstallmentModel(
      quantity: json['quantity'].toInt(),
      amount: json['amount'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'quantity': quantity,
      'amount': amount,
    };
  }

  factory InstallmentModel.fromEntity(
      Installment installment,
      ) {
    return InstallmentModel(
      quantity: installment.quantity,
      amount: installment.amount,
    );
  }
}