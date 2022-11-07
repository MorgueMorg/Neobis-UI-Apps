import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
	MaterialApp(
		home: BallPage(),
	),
	);

class BallPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	backgroundColor: Colors.white,
	appBar: AppBar(
		title: Text('Magic Ball'),
	),
	body: Ball(),
	);
}
}

class Ball extends StatefulWidget {
const Ball({super.key});

@override
_BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
int ballNumber = 1;
	
@override

Widget build(BuildContext context) {
	return Center(
	child: TextButton(
		onPressed: () {
		setState(() {
			
			ballNumber = Random().nextInt(5) + 1;
		});
		},
		
		child: Image.asset('assets/ballGame/ball$ballNumber.png'),
	),
	);
}
}
