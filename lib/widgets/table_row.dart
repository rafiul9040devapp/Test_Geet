import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableRowItem extends StatelessWidget {
  final String? time;
  final String? date;
  final Color? color;
  final String? invoice;
  final String? amount;
  final String? status;

  const TableRowItem({
    super.key,
    this.color,
    this.time,
    this.date,
    this.invoice,
    this.amount,
    this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                date ?? "Time",
                textAlign: TextAlign.center,
                style: TextStyle(color: color ?? Colors.black),
              ),
              Text(
                time ?? " ",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          flex: 3,
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            invoice ?? "Invoice",
            textAlign: TextAlign.center,
            style: TextStyle(color: color ?? Colors.black),
          ),
          flex: 4,
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            amount ?? "Amount",
            textAlign: TextAlign.center,
            style: TextStyle(color: color ?? Colors.black),
          ),
          flex: 2,
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            status ?? "Status",
            textAlign: TextAlign.center,
            style: TextStyle(color: color ?? Colors.black),
          ),
          flex: 2,
        ),
      ],
    );
  }
}
