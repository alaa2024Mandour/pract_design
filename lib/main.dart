import 'package:flutter/material.dart';
import 'package:test3/layOut/newslettelScreen/newslittilDesignScreen.dart';

import 'layOut/newslettelScreen/successScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:newsLittil() ,
       );
  }
}

