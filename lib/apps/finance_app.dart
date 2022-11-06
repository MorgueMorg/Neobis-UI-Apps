import 'package:flutter/material.dart';

class FinanceApp extends StatefulWidget {
  @override
  State<FinanceApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FinanceApp> {
  int _selectedIndex = 0;

  final List<String> _listTitles = [
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

  final List<int> _listSpent = [
    321,
    574,
    124,
    765,
    324,
    726,
    325,
  ];

  void _changeIndex(int index) {
    setState(() {
      // Cтейт для смены индекса (пригодится снизу в футере)
      _selectedIndex = index;
    });
  }

  final List<Widget> _listImages = [
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/home.png',
            width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon:
            Image.asset('assets/financeImages/tag.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/happy.png',
            width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/heart.png',
            width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/cookie.png',
            width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/financeImages/mail.png',
            width: 100, height: 100)),
    IconButton(
        onPressed: () {},
        // Я не знаю почему опять сердце, так в фигме
        icon: Image.asset('assets/financeImages/heart.png',
            width: 200, height: 200)),
  ];

  final List<Color> chipColors = [
    Colors.yellow.shade700,
    Colors.purple.shade900,
    Colors.lightGreen.shade500,
    Colors.purple.shade600,
    Colors.blue.shade800,
    Colors.lightBlue.shade300,
    Colors.purple.shade600,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 170,
          backgroundColor: Colors.white,
          elevation: 0,
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              "Баланс",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Text(
              '\$1200.89',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_left_rounded)),
                const Text(
                  'Апрель 2020',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right_rounded)),
              ],
            ),
          ]),
        ),
        body: Center(
          child: Column(
            children: [
              /* Короче я дико тупанул. По идее тут лучше было бы юзать статический список, но я юзанул динамику, из за чего пришлось ставить сайдбокс чтобы снизу нормально смотрелся текст "см. еще". Если вместо бокса воткнуть expanded, текст будет прям в самом низу, не по фигме в общем будет. Но теперь на 14 айфоне выглядит как на фигме. */
              SizedBox(
                width: 1000,
                height: 540.0,
                child: ListView.builder(
                  itemCount: _listTitles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Chip(
                            label: _listImages[index],
                            backgroundColor: chipColors[index],
                            padding: EdgeInsets.all(0),
                            labelPadding: EdgeInsets.all(0),
                          ),
                          title: Text(
                            _listTitles[index],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '\$${_listSpent[index]}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                _listDesc[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  },
                ),
              ),
              Text("См. ещё", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/financeImages/active.png"),
            ),
            label: 'Главная'
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/financeImages/union.png"),
            ),
            label: 'Отчёты'
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/financeImages/account.png"),
            ),
            label: 'Профиль'
          ),
        ],
        // Для смены айтема в футере, состояние сверху
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
      ),
      ),
    );
  }
}
