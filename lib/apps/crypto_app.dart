import 'package:flutter/material.dart';

class CryptoApp extends StatefulWidget {
  @override
  State<CryptoApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CryptoApp> {
  List<Widget> listImage = [
    IconButton(
        onPressed: () {},
        icon: Image.asset('images/bitcoin.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('images/etherium.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('images/litecoin.png', width: 50, height: 50)),
    IconButton(
        onPressed: () {},
        icon: Image.asset('images/ripple.png', width: 50, height: 50)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ! Убирает стрелку "назад" в аппбаре
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        elevation: 0,
        title:
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
          Expanded(
              flex: 0,
              child: Container(
                // ! Из фигмы
                // child: Image.asset(
                //   'images/settings.png',
                // ),
                // ! Из либы флаттера (мне нравится больше)
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_outlined, color: Colors.grey),
                ),
              ))
        ]),
      ),
      body: null,
    );
  }
}
