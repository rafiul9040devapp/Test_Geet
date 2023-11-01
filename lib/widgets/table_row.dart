import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableRowItem extends StatelessWidget {
  final String? time;
  final Color? color;
  final String invoice;
  final String amount;
  final String status;

  const TableRowItem({
    super.key,
    this.color,
    this.time,
    required this.invoice,
    required this.amount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(child: Text(time??"",textAlign: TextAlign.center, style: TextStyle(color: color?? Colors.black),), flex: 3,),
        SizedBox(width: 5,),
        Expanded(child: Text(invoice,textAlign: TextAlign.center, style: TextStyle(color: color?? Colors.black),), flex: 4,),
        SizedBox(width: 5,),
        Expanded(child: Text(amount,textAlign: TextAlign.center, style: TextStyle(color: color?? Colors.black),), flex: 2,),
        SizedBox(width: 5,),
        Expanded(child: Text(status,textAlign: TextAlign.center, style: TextStyle(color: color?? Colors.black),), flex: 2,),
      ],
    );
  }
}
