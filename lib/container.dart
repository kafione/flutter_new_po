import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  const ContainerBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('container Box', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Colors.black
                ),
                boxShadow: [
                  BoxShadow(
                    color: CupertinoColors.black.withAlpha(17),
                    offset: Offset(4,10)
                  )
                ]
              ),
              child: Text('CONTINER',style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
