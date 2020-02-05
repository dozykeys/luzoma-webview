import 'package:flutter/material.dart';
import 'package:luzoma/webview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  void fire(){
    setState((){
      gowebview(context);
    });
  }

  Future gowebview(BuildContext context) async{
    Map results=await Navigator.push(context,MaterialPageRoute(builder: (context)=>webview()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar:AppBar(
//        title:Text('webview'),
//      ),
      appBar: PreferredSize(
        child: Container(),
        preferredSize: Size.fromHeight(0.0),
      ),
      body: Center(
          child:FlatButton(
            child:Text("Go To"),
            onPressed:(){fire();},
          )
      ),
    );
  }
}
