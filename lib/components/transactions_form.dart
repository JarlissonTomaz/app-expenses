import 'package:flutter/material.dart';

class TransactionsForm extends StatelessWidget {
  TransactionsForm({super.key});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            onPressed: () {},
            child: const Text('Nova transação'),
          )
        ],
      ),
    );
  }
}
