import 'package:flutter/material.dart';
import 'package:flutter_platform_specific/flutter_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePageExample(),
    );
  }
}

class MyHomePageExample extends StatefulWidget {


  @override
  _MyHomePageExampleState createState() => _MyHomePageExampleState();
}

class _MyHomePageExampleState extends State<MyHomePageExample> {



  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Futter Second Main Screen"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:8.0, left: 8.0, top: 30.0,bottom: 30.0),
              child: Text("You are Seeing the Flutter MainActivity"),
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0, left: 8.0, top: 30.0,bottom: 30.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => FlutterTwo()));
                },
                child: Container(color:Colors.indigo,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('Go to another Flutter Activity', style: Theme.of(context).textTheme.headline4,)),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0, left: 8.0, top: 30.0,bottom: 30.0),
              child: Container(color:Colors.indigo,child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text('Go to Native Android Activity', style: Theme.of(context).textTheme.headline4,)),
              )),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
