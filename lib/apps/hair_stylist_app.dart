import 'package:flutter/material.dart';

class HairApp extends StatefulWidget {
  @override
  // Состояние чтобы футер был с активными айтемами≈
  State<HairApp> createState() => _MyHomePageState();
}

void display() {
  // print(1);
}

class _MyHomePageState extends State<HairApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 221, 221),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      InkWell(
                        onTap: display,
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      IconButton(
                        onPressed: display,
                        icon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Hair Stylist",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 5),
                            const Icon(
                              Icons.face_retouching_natural,
                              size: 100,
                            ),
                            const Text(
                              "Anna Ray",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ],
                            ),
                            const Text(
                              "5 years experience",
                              style: TextStyle(fontSize: 10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                IconButton(
                                  icon: Icon(Icons.phone, size: 20),
                                  onPressed: display,
                                  color: Colors.brown,
                                ),
                                IconButton(
                                  icon: Icon(Icons.mail, size: 20),
                                  onPressed: display,
                                  color: Colors.brown,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 5),
                            const Icon(
                              Icons.face_unlock_rounded,
                              size: 100,
                            ),
                            const Text(
                              "George Sebo",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ],
                            ),
                            const Text(
                              "4 years experience",
                              style: TextStyle(fontSize: 10),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                IconButton(
                                  icon: Icon(Icons.phone, size: 20),
                                  onPressed: display,
                                  color: Colors.brown,
                                ),
                                IconButton(
                                  icon: Icon(Icons.mail, size: 20),
                                  onPressed: display,
                                  color: Colors.brown,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Schedule",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown[700]),
                      ),
                      Text(
                        "Febr, 2023",
                        style: TextStyle(color: Colors.brown[700]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          // Если в контейнере есть decoration, то цвет должен быть в декоре
                          // color: Colors.red,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 169, 169, 169),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18,
                          ),
                          child: Column(
                            children: const [
                              Text(
                                "11",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("S"),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 65, 32, 32),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 18,
                              ),
                              child: Column(
                                children: const [
                                  Text(
                                    "11",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "S",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.white,
                                    size: 17,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  border: Border.all(color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          // Если в контейнере есть decoration, то цвет должен быть в декоре
                          // color: Colors.red,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 169, 169, 169),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18,
                          ),
                          child: Column(
                            children: const [
                              Text(
                                "11",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("S"),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          // Если в контейнере есть decoration, то цвет должен быть в декоре
                          // color: Colors.red,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 169, 169, 169),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18,
                          ),
                          child: Column(
                            children: const [
                              Text(
                                "11",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("S"),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          // Если в контейнере есть decoration, то цвет должен быть в декоре
                          // color: Colors.red,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 169, 169, 169),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18,
                          ),
                          child: Column(
                            children: const [
                              Text(
                                "11",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("S"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text("Available Slots",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown[700],
                          ))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    runSpacing: 10,
                    spacing: 20,
                    children: [
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 65, 32, 32),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            "9am-10am",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 169, 169, 169),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            "9am-10am",
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 169, 169, 169),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            "9am-10am",
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 169, 169, 169),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            "9am-10am",
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
