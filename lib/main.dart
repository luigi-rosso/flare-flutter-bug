import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flare',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body:
        Container(decoration: BoxDecoration(color: Colors.blue),
          child: Column(children: <Widget>[
            Image.asset('assets/images/logoo.png',height: 200,width: 200,alignment: Alignment.topCenter,),
          Expanded(
            child: GestureDetector( 
            onTap:(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => StartPage()),);},
              child:Center(
                child:Container(decoration: BoxDecoration(color: Colors.white),
                  child: FlareActor("assets/anims/testanim.flr",
                  fit: BoxFit.contain,
                  animation: "test")
                )
              )
            )
          ),
          ],)
      )
    );       
  }    
}