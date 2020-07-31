import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_desing/src/pages/basico_page.dart';
import 'package:flutter_desing/src/pages/botones_page.dart';
import 'package:flutter_desing/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico':(BuildContext context)=>BasicoPage(),
        'scroll':(BuildContext context)=>ScrollPage(),
        'botones':(context)=>BotonesPage(),

      },
    );
  }
}
