import 'package:flutter/material.dart';

class FinanceApp extends StatefulWidget {
  @override
  State<FinanceApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State <FinanceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Finance"),
        ),
        body: Container(child: Text("Finance")),
      ),
    );
  }
}
