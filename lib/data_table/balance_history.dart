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
            color: Colors.deepOrange,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TableRowItem( time: "Time", invoice: "Invoice", amount: "Amount", status: "Status",color: Colors.lightGreen,),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TableRowItem(time: "08 oct 2023\n6:18PM", invoice: "asdjklajskdfjasdfsdk", amount: "Amount", status: "Status")
          ),
          Divider(color: Colors.grey, thickness: 1.0,),

        ],
      ),
    );
  }


}
