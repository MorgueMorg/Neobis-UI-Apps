import 'package:flutter/material.dart';

class FinanceApp extends StatefulWidget {
  @override
  State<FinanceApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State <FinanceApp> {
  final List<String> _listTitles= [
    'Дом',
    'Покупки',
    'Транспорт',
    'Здоровье',
    'Фитнес',
    'Счета',
    'Ресторан',
  ];

  final List<String> _listDesc = [
    'Продукты',
    'Одежда',
    'Такси',
    'Лечение',
    'Тренировки',
    'Коммунальные',
    'Ужин',
  ];

  final List<double> _listSpent= [
    321,
    574,
    124,
    756,
    324,
    726,
    325,
  ];

  final List<Widget> _listImages = [
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/home.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/tag.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/happy.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/heart.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/cookie.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/mail.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        // Я не знаю почему опять сердце, так в фигме
        icon: Image.asset('assets/financeImages/heart.png', width: 50, height: 50)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Finance"),
        ),
        body: null,
      ),
    );
  }
}