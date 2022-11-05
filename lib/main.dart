import 'package:flutter/material.dart';
import 'package:neobisui/apps/magic_ball_app.dart';
import 'package:neobisui/apps/crypto_app.dart';
import 'package:neobisui/apps/finance_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        '/magic_ball': (context) => BallPage(),
        '/crypto_app': (context) => CryptoApp(),
        '/finance_app': (context) => FinanceApp(),
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
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/crypto_app');
                },
                child: Text('Crypto App')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/finance_app');
                },
                child: Text('Finance App')),
          ],
        ),
      ),
    );
  }
}
