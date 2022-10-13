import 'package:flutter/material.dart';

class BarChat extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  BarChat(this.label, this.spendingAmount, this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
            // Prevents child from growing
            child: Text('\$$spendingAmount')),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 150,
          width: 20,
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10)),
            ),
            FractionallySizedBox(
              heightFactor: spendingPctOfTotal,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ]),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          '$label',
          style: Theme.of(context).textTheme.headline6,
        )
      ],
    );
  }
}
