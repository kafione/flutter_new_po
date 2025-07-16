import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Button',
          style: TextStyle(color: CupertinoColors.extraLightBackgroundGray),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFFF5722),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text("submit"),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text("submit"),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('outline Button')),
            TextButton(
              onPressed: () {},
              child: Text(
                'text button',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Icon(
              Icons.phone_android_outlined,
              color: Colors.deepOrange,
              size: 50,
            ),
            IconButton(
              onPressed: () {
                print('click delet');
              },
              icon: Icon(
                Icons.delete_forever_outlined,
                color: Colors.deepOrange,
                size: 50,
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print('click me');
              },
              child: Text(
                'this is test text',
                style: TextStyle(fontSize: 50, color: Colors.deepOrange),
              ),
            ),

            InkWell(
              onTap: () {
                print('inkwel');
              },
              child: Text(
                'this is test text2',
                style: TextStyle(fontSize: 50, color: Colors.deepOrange),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'this is test text2',
                style: TextStyle(fontSize: 20, color: Colors.deepOrange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
