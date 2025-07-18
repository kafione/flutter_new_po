import 'package:flutter/material.dart';
import 'package:flutter_new_po/container.dart';
// import 'package:flutter_new_po/textFiled.dart';

// import 'package:flutter_new_po/button.dart';
// import 'package:flutter_new_po/Home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter project',
      // home: home(),
      // home: button() ,
    // home: textfiled(),
    home: ContainerBox() ,
    );
  }
}