import 'package:flutter/material.dart';
import 'package:flutter_stful_stls/stful.dart';

class Stls extends StatelessWidget {
  const Stls({Key? key}) : super(key: key);







  final int? d1=1;
  final int? d2=2;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STLS'),

      ),
      body: Column(
        children: [

Text('$d1',style: TextStyle(fontSize: 40)),
          Text('$d2',style: TextStyle(fontSize: 40),),

        ],
      ),

    );
  }
}

