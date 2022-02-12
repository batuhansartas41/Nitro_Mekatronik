import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/startpage.dart';
import 'pages/walletpage.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nitro-mekatronik',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List screens = <Widget>[
    const StartPage(),
    const WalletPage(),
    const Icon(
      CupertinoIcons.chart_bar_alt_fill,
    ),
    const Icon(Icons.person_outline_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_grid_2x2), label: ""),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chart_bar_alt_fill), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: ""),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: const Color(0xFF5d5590),
        onTap: _onItemTapped,
      ),
    );
  }
}
