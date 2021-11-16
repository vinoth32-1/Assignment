import 'package:flutter/material.dart';
import 'package:flutter_stful_stls/widgets/radiobutton_widget.dart';
import 'package:flutter_stful_stls/widgets/drawer.dart';
import 'package:flutter_stful_stls/widgets/tabbar.dart';
import 'package:flutter_stful_stls/widgets/Bottomnavigationbar.dart';
import 'package:flutter_stful_stls/widgets/dropdown.dart';

class Widgets extends StatefulWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  _WidgetsState1 createState() => _WidgetsState1();
}

class _WidgetsState1 extends State<Widgets> {
  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('SignUp Page')),

      ),
drawer: drawer(),


      body: Column(
        children: [
         // MyStatelessWidget(),

          Bottomnavigation(

          ),



          //MyStatelessWidget(),
        ],
      ),

    );


  }
}
