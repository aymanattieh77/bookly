import 'package:equatable/equatable.dart';

class ListPrice extends Equatable {
  final num? amount;
  const ListPrice({
    this.amount,
  });

  factory ListPrice.fromJson(Map<String, dynamic> json) =>
      ListPrice(amount: json['amount']);

  Map<String, dynamic> toJson() => {
        'amount': amount,
      };

  @override
  List<Object?> get props => [amount];
}
