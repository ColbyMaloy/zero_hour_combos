import 'package:flutter_web/material.dart';
import 'package:zero_hour_web/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zero Hour',
      initialRoute: '/',
      routes: {
       
        '/': (context) => MyHomePage(),
        '/n': (context) => MyHomePage(),
        '/m': (context) => MyHomePage(),
      
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
