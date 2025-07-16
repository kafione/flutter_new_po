import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my new project ',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('my name is raju', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.amberAccent,
          ),),
          Text('my name is raju', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),),
          Text('my name is raju', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),),

          Row(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text('TEXT', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),), Text('TEXT', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),), Text('TEXT', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),),
            ],
          )
          
        ],

      ),
      
    );
  }
}
