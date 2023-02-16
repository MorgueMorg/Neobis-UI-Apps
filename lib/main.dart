import 'package:flutter/material.dart';
import 'package:neobisui/apps/magic_ball_app.dart';
import 'package:neobisui/apps/crypto_app.dart';
import 'package:neobisui/apps/finance_app.dart';
import 'package:neobisui/apps/travel_app.dart';
import 'package:neobisui/apps/singles_app.dart';
import 'package:neobisui/apps/hair_stylist_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/magic_ball': (context) => BallPage(),
        '/crypto_app': (context) => CryptoApp(),
        '/finance_app': (context) => FinanceApp(),
        '/travel_app': (context) => TravelApp(),
        '/singles_app': (context) => SinglesApp(),
        '/hair_app': (context) => HairApp(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Neobis UI'),
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
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/travel_app');
                },
                child: Text('Travel App')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/singles_app');
                },
                child: Text('Singles App')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/hair_app');
                },
                child: Text('Hair App')),
          ],
        ),
      ),
    );
  }
}
