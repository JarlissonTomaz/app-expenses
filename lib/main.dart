import 'package:flutter/material.dart';
import 'package:flutter_expenses/components/transactions_user.dart';

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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
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
          TransactionsUser()
        ],
      ),
    );
  }
}
