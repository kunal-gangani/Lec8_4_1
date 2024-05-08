import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/homePage.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}