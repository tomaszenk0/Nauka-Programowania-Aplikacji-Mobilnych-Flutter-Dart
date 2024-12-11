import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget PrzyciskiAppbar(String tekst) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 154, 160, 154),
      ),
      child: Text(
        tekst,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget Napisykontenerow(String napis) {
    return Text(
      napis,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget Kontener({required Color kolor, String? imagePatch}) {
    return Container(
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        color: kolor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 27, 27),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 73, 70, 70),
          actions: [
            Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                      image: DecorationImage(
        image: AssetImage('assets/JA.jpg'),
        fit: BoxFit.cover,
      ),

                  ),
                ),
                const SizedBox(width: 14),
                PrzyciskiAppbar('Wszystko'),
                const SizedBox(width: 14),
                PrzyciskiAppbar('Muzyka'),
                const SizedBox(width: 14),
                PrzyciskiAppbar('Podcasty'),
                const SizedBox(width: 14),
              ],
            ),
          ],
        ),
        body: ListView(
          children: [
              SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              child: Napisykontenerow('Twoje ulubione składanki'),
            ),
              SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                ],
              ),
            ),
              SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              child: Napisykontenerow('Playlisty polecane dla ciebie'),
            ),
              SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                  Kontener(kolor: const Color.fromARGB(255, 0, 248, 54)),
                  const SizedBox(width: 14),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          height:95,
          color: const Color.fromARGB(20, 130, 141, 139),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.home),
                      color: Colors.white,
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search_outlined),
                      color: Colors.white,
                    ),
                    const Text(
                      'Szukaj',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.auto_awesome_motion_outlined),
                      color: Colors.white,
                    ),
                    const Text(
                      'Biblioteka',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
          ),
        ),
      ),
    );
  }
}
