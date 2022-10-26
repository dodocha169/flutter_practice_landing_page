import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Daily UI #003'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          alignment: Alignment.topLeft,
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/004.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 190, 10),
                child: Text('延岡市',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: 'KosugiMaru')),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 150, 0),
                child: Text(
                  '延岡市は、宮崎県と大分県の境に位置し、九州山地を背に、清流五ヶ瀬川が流れ、広大な太平洋に面している、豊かな自然に恵まれたまちです。',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Mplus1'),
                ),
              )
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            activeIcon: Icon(Icons.info_outline),
            label: 'About',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_bus),
              activeIcon: Icon(Icons.directions_bus_outlined),
              label: 'Visit',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              activeIcon: Icon(Icons.restaurant_outlined),
              label: 'Eat',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.hotel),
              activeIcon: Icon(Icons.hotel_outlined),
              label: 'Stay',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
