import 'package:flutter/material.dart';
import 'package:flutter_expenses/transaction.dart';

void main() {
  runApp(const AppExpenses());
}

class AppExpenses extends StatelessWidget {
  const AppExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatelessWidget {
  MyHomeApp({super.key});
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Roupa Nova',
      value: 50,
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
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: Card(
            elevation: 5,
            child: Text('Gráfico'),
          ),
        ),
        Column(
            children: _transactions.map((tr) {
          return Card(
            child: Text(tr.title),
          );
        }).toList()),
      ],
    ));
  }
}
