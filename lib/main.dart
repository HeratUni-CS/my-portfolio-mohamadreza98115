import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Center(child: Text("My Portfolio")),
        ),
        body: SafeArea(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            Text(
              "Mohamadreza Mohamadi",
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontFamily: 'Pacifico'),
            ),
            Text("STUDENT",
                style: TextStyle(
                    fontSize: 20, letterSpacing: 1, color: Colors.white)),
            SizedBox(
              height: 30,
              width: 150,
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.black87),
                title: Text(
                  "Example@gmail.com",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.black87),
                title: Text(
                  "+93789897949",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            )
          ]),
        )),
      ),
    );
  }
}
