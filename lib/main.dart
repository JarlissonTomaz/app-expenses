import 'package:flutter/material.dart';
import 'package:flutter_expenses/transaction.dart';
import 'package:intl/intl.dart';

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

  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
              children: _transactions.map(
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
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
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
          ).toList()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(hintText: 'Título'),
                ),
                TextField(
                  controller: valueController,
                  decoration: const InputDecoration(hintText: 'Valor (R\$)'),
                ),
                TextButton(
                  onPressed: () {
                    print(titleController);
                    print(valueController);
                  },
                  child: const Text('Nova transação'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
