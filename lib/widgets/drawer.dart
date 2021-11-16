

import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text('Welcome',style: TextStyle(fontSize: 30),)

          ),

          ListTile(
            leading: Icon(Icons.account_circle,size: 30,),
            title: Text('Profile',style: TextStyle(fontSize: 20),),
          ),

          ListTile(
            leading: Icon(Icons.message,size: 30,),
            title: Text('Messages',style: TextStyle(fontSize: 20),),

          ),


        ],
      ),
    );


  }
}
