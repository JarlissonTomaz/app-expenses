import 'package:flutter/material.dart';
import 'package:flutter_expenses/components/transactions_form.dart';
import 'package:flutter_expenses/components/transactions_list.dart';
import 'package:flutter_expenses/transaction.dart';

class TransactionsUser extends StatefulWidget {
  const TransactionsUser({super.key});

  @override
  State<TransactionsUser> createState() => _TransactionsUserState();
}

class _TransactionsUserState extends State<TransactionsUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Roupa Nova',
      value: 145.3,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Sapato Nova',
      value: 150,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionsList(_transactions),
        TransactionsForm(),
      ],
    );
  }
}
