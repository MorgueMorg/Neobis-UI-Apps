import 'package:flutter/material.dart';

class CryptoApp extends StatefulWidget {
  @override
  State<CryptoApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CryptoApp> {
  final List<Widget> listImage = [
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/cryptoImages/bitcoin.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/cryptoImages/etherium.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/cryptoImages/litecoin.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/cryptoImages/ripple.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/cryptoImages/ripple.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('assets/cryptoImages/ripple.png', width: 50, height: 50)),
  ];

  final List<Color> chipColors = [
    Colors.red.shade50,
    Colors.indigo.shade50,
    Colors.green.shade50,
    Colors.blue.shade50,
    Colors.blue.shade50,
    Colors.blue.shade50
  ];

  final List<String> listText = [
    'Bitcoin',
    'Etherium',
    'Litecoin',
    'Ripple',
    'Ripple',
    'Ripple'
  ];

  final List<String> listTicket = ['BTC', 'ETH', 'LTC', 'XRP', 'XRP', 'XRP'];

  // ! Из за плюсов в числах по макету, пришлось делать из чисел строки
  final List<String> listGain = ['+1.6', '-0.82', '-2.10', '+0.27', '+0.27', '+0.27'];

  // ! Из за запятых в числах по макету, пришлось делать из чисел строки
  final List<String> listPrice = [
    '29,850.15',
    '10,561.24',
    '3,676.76',
    '5,241.62',
    '5,241.62',
    '5,241.62'
  ];

  final List<double> listTotal = [2.73, 47.61, 39.27, 16447.65, 16447.65, 16447.65];

  void _changeSomething() {
    setState(() {
      // Пустой стейт для листвью билдера
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // ! Убирает стрелку "назад" в аппбаре
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        elevation: 0,
        title: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Text('Портфолио',
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 0,
                    child: Container(
                      // ! Из фигмы
                      // child: Image.asset(
                      //   'assets/cryptoImages/settings.png',
                      // ),
                      // ! Из либы флаттера (мне нравится больше)
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings_outlined,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "посмотреть все",
                  style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: listImage.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Chip(
                            backgroundColor: chipColors[index],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            label: listImage[index],
                            labelPadding: EdgeInsets.only(
                                top: 5, bottom: 5, left: 5, right: 5),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listText[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${listGain[index]}%',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${listPrice[index]}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${listTotal[index]} ${listTicket[index]}',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(height: 1),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 0,
        iconSize: 30,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/cryptoImages/chart.png"),
              color: Colors.grey,
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/cryptoImages/account.png"),
              color: Colors.grey,
            ),
            label: ''
          ),
        ],
        selectedItemColor: Colors.redAccent,
      ),
    );
  }
}
