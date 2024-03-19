import 'package:flutter/material.dart';

void main() {
  runApp(const AppExpenses());
}

class AppExpenses extends StatelessWidget {
  const AppExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          child: const Card(
            elevation: 5,
            child: Text('Gráfico'),
          ),
        ),
        const Card(
          child: Text('Lista de transações'),
        )
      ],
    ));
  }
}
