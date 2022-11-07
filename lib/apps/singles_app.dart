import 'package:flutter/material.dart';

/* Во фрейме в фигме четко указано что это 11 айфон, поэтому верстал под его эмулятор */
class SinglesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
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
      ),
      body: Column(
        children: [
          Divider(),
          Row(
            children: [
              Column(
                children: [
                  Text("SOS"),
                  Text("Mini meltdown? Get some"),
                  Text("Headspace in a hurry"),
                ],
              ),
              Image(image: AssetImage('assets/singlesImages/Book.png')),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          )
        ],
      ),
    );
  }
}
