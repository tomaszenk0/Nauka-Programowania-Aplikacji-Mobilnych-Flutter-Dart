import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _tekst = 'NIE LUBIĘ PIWA!';
  Color kolorKonteneru=Colors.orange;

  void _zmienTekst() {
    setState(() {
      if (_tekst == 'NIE LUBIĘ PIWA!') {
        _tekst = 'LUBIĘ PIWO!';
        kolorKonteneru=Colors.orange;
      } else {
        _tekst = 'NIE LUBIĘ PIWA!';
        kolorKonteneru=Colors.red;
      }
    });
  }
  

  @override
  Widget build(BuildContext context) {
    double wysokoscekranu = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Zmieniaj zdanie jak kobieta',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      ),
      body: Stack(
        children: [       
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Kliknij przycisk, aby zmienić tekst:'),
                Text('$_tekst', style: TextStyle(fontSize: 30)),
              ],
            ),
          ),
          Positioned(
            right: 120,
            left: 120,
            bottom: 290,
            child: FloatingActionButton(
              onPressed: _zmienTekst, 
              child: Icon(
                Icons.change_circle,
                color: Colors.black,
              ),
              backgroundColor: kolorKonteneru,
            ),
          ),
             Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              Container(
                width: 30,
                height: wysokoscekranu,
                color: kolorKonteneru,
              ),
              Container(
                width: 30,
                height: wysokoscekranu,
                color: kolorKonteneru,
              ),
            ],
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
    );
  }
}