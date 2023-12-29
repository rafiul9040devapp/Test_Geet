import 'package:flutter/material.dart';
import 'package:test_geet/widgets/table_row.dart';

class BalanceHistory extends StatelessWidget {
  const BalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Balance History"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.redAccent,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: TableRowItem(),
            ),
          ),
          const Padding(
             padding: const EdgeInsets.all(16.0),
             child: TableRowItem(
                 date: "08 oct 2023",
                 time: "6:18PM",
                 invoice: "asdjklajskdfjasdfsdk",
                 amount: "Amount",
                 status: "Status"),
           ),
          const Divider(
             color: Colors.grey,
             thickness: 1.0,
           ),
        ],
      ),
    );
  }
}
