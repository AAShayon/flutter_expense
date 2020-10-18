import 'package:flutter/material.dart';
import 'package:ndb/widgets/transaction_list.dart';
import '../widgets/new_transection.dart';
import '../models/transection.dart';
class UserTransection extends StatefulWidget {
  @override
  _UserTransectionState createState() => _UserTransectionState();
}

class _UserTransectionState extends State<UserTransection> {
  final List<Transection> _userTransection=[
    Transection(
      name: 'abul',
      title: 'juta',
      amount: 220.0,
      dateTime: DateTime.now(),
    ),
    Transection(
      name: 'Jobu',
      title: 'shoes',
      amount: 120.0,
      dateTime: DateTime.now(),
    ),
  ];
  void _addnewTransection(String txtitle,double txamount,String txname){
    final newTx=Transection(
      title: txtitle,
      amount: txamount,
      dateTime: DateTime.now(),
      name: txname,
    );
    setState(() {
      _userTransection.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addnewTransection), TransactionList(_userTransection),

      ],
    );
  }
}
