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
        appBar: AppBar(
          title: const Text(
            'Expenses',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple[300],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 5,
                color: Colors.purple,
                child: Text(
                  'Gráfico',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Column(
                children: _transactions.map((tr) {
              return Card(
                  child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      tr.value.toString(),
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
                        tr.date.toString(),
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ));
            }).toList()),
          ],
        ));
  }
}
