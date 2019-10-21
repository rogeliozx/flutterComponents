import 'package:components/src/Pages/alert_page.dart';
import 'package:components/src/Pages/avatar_page.dart';
import 'package:components/src/Pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
     // home: HomePage(),
      initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/':(BuildContext context)=>HomePage(),
        'alert':(BuildContext context)=>AlertPage(),
        'avatar':(BuildContext context)=>AvatarPage(),
      },
    );
  }
}
