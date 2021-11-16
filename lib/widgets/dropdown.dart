import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

int _value=1;

class dropdown extends StatefulWidget {
  const dropdown({Key? key}) : super(key: key);

  @override
  _dropdownState createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {

  @override
  Widget build(BuildContext context) {
    return Column(
mainAxisAlignment: MainAxisAlignment.start,
           children: [

              Container(
               padding: EdgeInsets.all(20.0),
               child: DropdownButton(
                   value: _value,
                   items: [
                     DropdownMenuItem(
                       child: Text("City"),
                       value: 1,
                     ),
                     DropdownMenuItem(
                       child: Text("Vellore"),
                       value: 2,
                     ),
                     DropdownMenuItem(
                         child: Text("Arcot"),
                         value: 3
                     ),
                     DropdownMenuItem(
                         child: Text("Chennai"),
                         value: 4
                     )
                   ],
                   onChanged: (value) {
                     setState(() {
                      // _value = value;
                     });
                   }),
             )



           ],




    );
  }
}
