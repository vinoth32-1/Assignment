import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';



class listview_lvb extends StatefulWidget {
  const listview_lvb({Key? key}) : super(key: key);





  @override
  _listview_lvbState createState() => _listview_lvbState();
}

class _listview_lvbState extends State<listview_lvb> {

  List<dynamic>numberdata = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];


  void incriment() {
    print("New list ----> ${numberdata}");

      for(int i =0; i < 10 ;i++){
        numberdata.add(numberdata.length +1);
      }

       print("List Number Data -----------> ${numberdata}");




  }

  void setstate() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listview & Listviewbuilder'),
      ),

      body: ListView.builder(
          itemCount: numberdata.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Center(
                    child: GestureDetector(
                        onTap: () {
                          print("Number Bool ----------> ${changenumbercolor[index]}");
                          setState(() {
                            changenumbercolor[index]=true;
                          });
                        },
                        child: Container(
                            height: 40,
                            child: Text(
                              '${numberdata[index]}',
                             /* style: TextStyle(
                                  color:changenumbercolor[index]?Colors.green:Colors.black),*/
                            )),
                    )),

                //Center(child: Text('$add')),
              ],





            );
          }),
      //Center(child: Text('$add')),

      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(right: 120),
            width: 120,
            child: FloatingActionButton.extended(
              onPressed: () {

              },
              icon: Icon(Icons.remove),
              label: Text('REMOVE'),
            ),
          ),
          Container(
            width: 120,
            child: FloatingActionButton.extended(
              onPressed: () {
                print("add button pressed");
               // incriment();




                incriment();
                listview_lvb();
                setState(() {


                });

                //incriment();

                //Center(child: Text('$add'));
              },
              icon: Icon(Icons.add),
              label: Text('ADD'),
            ),
          )
        ],
      ),

      // body: Center(child: Text('$add')),
    );
  }
}
