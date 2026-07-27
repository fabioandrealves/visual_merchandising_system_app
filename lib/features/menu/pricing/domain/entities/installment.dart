class Installment {
  final int quantity;
  final double amount;

  const Installment({
    required this.quantity,
    required this.amount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Installment &&
              quantity == other.quantity &&
              amount == other.amount;

  @override
  int get hashCode => Object.hash(
    quantity,
    amount,
  );
}