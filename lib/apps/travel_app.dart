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
          toolbarHeight: 200,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            children: [
              Text(
                'Путешествуйте',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                'Почувствуйте прилив энергии',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(height: 15,),
              Text(
                'Мы поможем вам исследовать, сравнить и',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                'забронировать впечатления - все в одном',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                'месте.',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Куда хотите поехать?',
                    hintStyle: TextStyle(color: Colors.blue),
                    // suffixIconColor: Colors.blue,
                    suffixIcon: Icon(Icons.search, color: Colors.blue,),
                  ),
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            children: [
              Image(
                image: AssetImage('assets/travelImages/abudhabi.png'),
              ),
              Image(
                image: AssetImage('assets/travelImages/sanantonio.png'),
              ),
              Image(
                image: AssetImage('assets/travelImages/abudhabi.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
