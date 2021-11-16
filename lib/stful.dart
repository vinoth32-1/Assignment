import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stful_stls/main.dart';


bool apiCall=true;

class Stful extends StatefulWidget {
  const Stful({this.v1,this.onPressed, Key? key}) : super(key: key);

 final int? v1;
final VoidCallback? onPressed;


  @override
  _Stful createState() => _Stful(v1);
}

class _Stful extends State<Stful> {

  //String title="STFUL";


  //int v3=v1*v2;

   int v1=1;
    int v2=2;
  void _incrementCounter() {
    v1++;
    update();
    
  }

  
  void dicriment(){
    v1--;
    update();
  }


   void multiplication(){

int v3=v1*v2;
print(v3);
    update();

  }
  
  void update(){
    setState(() {

      //v1++;
    });
  }

  _Stful(v1);


  @override
  void initState() {
    super.initState();
    debugPrint('state full widget init');
    Future.delayed(Duration(seconds: 10), () {

      debugPrint('10 sec later');
      apiCall = false;

    });
  }


  @override
  void didUpdateWidget(covariant Stful oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    debugPrint('didupdate method');
  }

   @override
   void dispose() {
    super.dispose();
    debugPrint("dispose the second screen");
   }

   @override
   void didChangeDependencies() {
     super.didChangeDependencies();
     debugPrint('state full widget didChangeDependencies method');
   }


@override
  void deactivate() {
    // TODO: implement deactivate
  debugPrint('deactivate');
    super.deactivate();
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('STFUL'),

      ),



      body: Column(

        children: [




          

             GestureDetector(
                 onTap: (){


                    _incrementCounter();

                 },
                 child: Center(
                   child: Text('$v1',
        style: Theme.of(context).textTheme.headline4,
                 ),
                 ),
             ),

          TextButton(onPressed: (){

            dicriment();
          }, child: Text('dicriment'),
          style:TextButton.styleFrom(
           primary: Colors.teal,
           backgroundColor: Colors.orange,
           // onPrimary: Colors.white,
          ),
          ),




          TextButton(onPressed: (){
            multiplication();
          }, child: Text('multiplication'),

          style:TextButton.styleFrom(
            primary: Colors.teal,
            backgroundColor: Colors.orange,
          ),

          ),

         /* RaisedButton(onPressed: onPressed)
          InkWell(),
          FlatButton(onPressed: onPressed, child: child)*/
          Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: Colors.orange),
              child: Center(child: Text('reset'))),

        ],
      ),

    );
  }
}


