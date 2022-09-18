import 'package:belajarflutter/font-style.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Homey',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Homey",
              ),
              backgroundColor: Colors.blueGrey,
              actions: [
                // IconButton( onPressed: (() {}), icon: Icon(Icons.mail)) //(){} agar ada animasi splash
              ],
            ),
            body: SafeArea(
                child: Container(
              margin:
                  EdgeInsets.only(left: 30.0, top: 0, right: 30.0, bottom: 0),
              // EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 0, top: 5.0, right: 0, bottom: 0),
              // didalam colum tidak ada margin dan padding, hanya ada di container
              child: Column(children: [
                Image(
                  image: AssetImage('assets/images/clean2.jpg'),
                  height: 500,
                ),
                Text(
                  "Feel Like Home",
                  style: mainHeader,
                ),
                Text(
                  'Enjoy the sensation',
                  style: subHeader,
                )
              ]),
            )
                // Icon(Icons.mail), //safe area agar tidak nabrak dengan navbar
                )));
  }
}
