import 'package:flutter/material.dart';

/* Во фрейме в фигме четко указано что это 11 айфон, поэтому верстал под его эмулятор */
class SinglesApp extends StatefulWidget {
  @override
  // Состояние чтобы футер был с активными айтемами≈
  State<SinglesApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SinglesApp> {
  int _selectedIndex = 0;
  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SOS",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Mini meltdown? Get some",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                          Text("Headspace in a hurry",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                              image:
                                  AssetImage('assets/singlesImages/Book.png')),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                          image:
                              AssetImage('assets/singlesImages/Bookshelf.png')),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "On-the-Go",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Mindful living? Get your",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              Text("Headspace to go",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Classic",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Like it simple? Get some",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                          Text("extra Headspace",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                              image: AssetImage(
                                  'assets/singlesImages/Diploma.png')),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                          image: AssetImage('assets/singlesImages/Globus.png')),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "SOS",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Mini meltdown? Get some",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              Text("Headspace in a hurry",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.grey.shade50,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/singlesImages/Series.png"),
              ),
              label: 'Series'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/singlesImages/Headphone.png"),
              ),
              label: 'Headspace'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/financeImages/account.png"),
              ),
              label: 'Profile'),
        ],
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
      ),
    );
  }
}
