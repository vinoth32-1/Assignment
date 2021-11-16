import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stful_stls/stful.dart';
import 'package:flutter_stful_stls/stls.dart';
import 'package:flutter_stful_stls/widgets.dart';
import 'package:flutter_stful_stls/listview_listviewbuilder/listview&listviewbuilder.dart';



void main() {
  runApp(MyApp());
}
List<bool> changenumbercolor = [];
class MyApp extends StatelessWidget {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      title: 'Flutter demo',
      theme: ThemeData(
               brightness: Brightness.light,

        primarySwatch: Colors.lightGreen,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: MyHomePage(title: 'Flutter stful & stls lifecycles '),

    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(



          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[



            GestureDetector(
              onTap: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) =>Stls() ));


              },
              child: Container(
                height: 30,
                width: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange),
                  child: Center(child: Text('Stateless Widget',style: TextStyle(color:Colors.black,fontSize: 17),))),
            ),
           GestureDetector(
             onTap: (){

               Navigator.push(context,
                   MaterialPageRoute(builder: (BuildContext context) =>Stful() ));

             },
             child: Container(

               margin:EdgeInsets.all(20),
               height: 30,
               width: 150,
               decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: Colors.orange),
                 child: Center(child: Text('Statefull Widget',style: TextStyle(color: Colors.black,fontSize: 17),))),
           ),



           TextButton(onPressed: (){
             Navigator.push(context,
                 MaterialPageRoute(builder: (BuildContext context) =>Widgets() ));

           }, child:Text('Widgets'),
           style: TextButton.styleFrom(
               primary: Colors.black,
               backgroundColor: Colors.orange),
           ),


            TextButton(onPressed: (){
              // for(int i=0;i<numberdata.length;i++){
              //   changenumbercolor.add(false);
              // }
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) =>listview_lvb() ));

            }, child:Text('LV&LVB'),
              style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.orange,),
            ),





          ],
        ),
      ),

    );





  }
}
