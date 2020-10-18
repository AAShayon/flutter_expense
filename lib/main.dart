import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widgets/user_transections.dart';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Homepage(),));
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightGreen,title: Text('Expense',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 20.0),),),
      body: Container(
//        height: 350,
        color: Colors.lightGreenAccent,child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('MY EXPENSE LIST',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 20.0),),
              UserTransection(),
            ],
          ),
        ],
      ),
      ),


    );
  }
}
