import 'package:flutter/material.dart';

class TravelApp extends StatefulWidget {
  @override
  State<TravelApp> createState() => _MyHomePageState();
}

/* ! По фигме текст уже был в картинках, поэтому я не стал сам верстать, хотя не знаю читерство это или нет. Впрочем и без этого ниче сложного, тупо виджет stack юзануть с текстом и дивайдером/сайзедбоксом
*/
class _MyHomePageState extends State<TravelApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 250,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            children: [
              // Да, я выбрал самый легкий способ переноса текста
              Text(
                'Путешествуйте',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                'Почувствуйте прилив энергии',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
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
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
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
              // Паддинги нужны из за фигмы
              Padding(
                padding: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('assets/travelImages/abudhabi.png'),
                  width: 300,
                  fit: BoxFit.cover,
                  // fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('assets/travelImages/sanantonio.png'),
                  width: 300,
                  fit: BoxFit.cover,
                  // fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('assets/travelImages/abudhabi.png'),
                  width: 300,
                  fit: BoxFit.cover,
                  // fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
