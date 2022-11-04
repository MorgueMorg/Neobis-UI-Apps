import 'package:flutter/material.dart';
import 'package:neobisui/apps/magic_ball_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        '/magic_ball': (context) => BallPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neobis UI'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/magic_ball');
                },
                child: Text('Magic Ball')),
          ],
        ),
      ),
    );
  }
}
