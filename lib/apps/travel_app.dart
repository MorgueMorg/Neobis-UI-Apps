import 'package:flutter/material.dart';

class TravelApp extends StatefulWidget {
  @override
  State<TravelApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TravelApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Travel"),
            centerTitle: true,
          ),
          body: Center(
            child: Image(
              image: AssetImage('assets/travelImages/abudhabi.png'),
            ),
          )),
    );
  }
}
