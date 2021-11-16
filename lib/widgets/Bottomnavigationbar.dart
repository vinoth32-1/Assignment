import 'package:flutter/material.dart';
import 'package:flutter_stful_stls/widgets.dart';
import 'package:flutter_stful_stls/widgets/radiobutton_widget.dart';
import 'package:flutter_stful_stls/widgets/dropdown.dart';
import 'package:flutter_stful_stls/widgets/textbutton.dart';


class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int ggg = 0;

  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Container(
      height: 700,
      width: 400,
      color: Colors.teal[100],
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Welcom to the signup page',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              height: 500,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children:[


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'First Name',
                          hintText: 'Enter first name'),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Last Name",
                        hintText: "Enter Last Name"
                      ),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Date Of Birth",
                          hintText: "Enter dob"
                      ),
                    ),
                  ),


                  radio(),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Address",
                        hintText: "enter address",
                      ),
                    ),
                  ),

               dropdown(),


                ],
              ),
            ),



            Container(
              margin: EdgeInsets.all(10),
              child: TextButton(onPressed: (){

              }, child: Text('Submit',style: TextStyle(fontSize: 20),),style: TextButton.styleFrom(primary: Colors.black,
              backgroundColor: Colors.white),),
            ),



          ],
        ),
      ),
    ),
    Text(
      'LOGIN',
      // style: optionStyle,
    ),
    Text(
      'LOGOUT',
      //style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      ggg = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: _widgetOptions.elementAt(ggg),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items:  <BottomNavigationBarItem>[
                bottomNavigationItem( Icon(Icons.home),'Home'),
                bottomNavigationItem(Icon(Icons.login),'login'),
                bottomNavigationItem(Icon(Icons.logout),'logout'),
              ],
              currentIndex: ggg,
              selectedItemColor: Colors.amber[800],
              onTap: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }


  BottomNavigationBarItem bottomNavigationItem(Icon icon, String text ){
    return BottomNavigationBarItem(
      icon:icon,
      label:text,
    );
  }
}
