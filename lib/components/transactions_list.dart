import 'package:flutter/material.dart';
import 'package:flutter_expenses/transaction.dart';
import 'package:intl/intl.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList(this.transactions, {super.key});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map(
      (tr) {
        return Card(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding: const EdgeInsets.all(10),
                child: Text(
                  'R\$ ${tr.value.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat('d MMM y').format(tr.date),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ).toList());
  }
}
