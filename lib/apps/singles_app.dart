import 'package:flutter/material.dart';

/* Во фрейме в фигме четко указано что это 11 айфон, поэтому верстал под его эмулятор */ 
class SinglesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
        title: Text(
          'Singles',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: null,
      backgroundColor: Colors.white,
    );
  }
}
