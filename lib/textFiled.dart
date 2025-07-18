import 'package:flutter/material.dart';

class textfiled extends StatelessWidget {
  const textfiled({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberContolar = TextEditingController();
    TextEditingController passwordContolar = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('text Fild', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: numberContolar,
              decoration: InputDecoration(
                hintText: 'inter mobile numbers',

                prefixIcon: Icon(color: Colors.green, Icons.phone),
                suffixIcon: Icon(color: Colors.green, Icons.check),
                labelText: 'Mobile Number',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                labelStyle: TextStyle(
                  color: const Color.fromARGB(148, 0, 0, 0),
                  fontSize: 17,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              obscureText: true,
              controller: passwordContolar,
              decoration: InputDecoration(
                hintText: 'inter Password',
                labelText: 'Password',
                prefixIcon: Icon(color: Colors.green, Icons.lock),
                suffixIcon: Icon(color: Colors.green, Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                labelStyle: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(153, 0, 0, 0),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 30,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: const Color.fromARGB(175, 245, 3, 3),
              ),

              onPressed: () {
                if (numberContolar.text.isEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Iner phone number')));
                } else if (numberContolar.text.length < 11) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('inter corect number')),
                  );
                } else {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(numberContolar.text)));
                }
                if (passwordContolar.text.isEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('inter pssword')));
                }
              },
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                numberContolar.clear();
                passwordContolar.clear();
              },
              child: Text('Clear'),
            ),
          ),
        ],
      ),
    );
  }
}
