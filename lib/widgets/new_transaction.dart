import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function _addNewTransactionP;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this._addNewTransactionP);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {
                _addNewTransactionP(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text('Add Transaction!'),
              textColor: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
