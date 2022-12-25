import 'package:flutter/material.dart';
import 'package:footballapp/Screens/home_page.dart';
import 'package:footballapp/Screens/kelompok_page.dart';


class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key  key}) : super(key: key);

  static const String _title = 'Halaman Aplikasi';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key  key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    KelompokPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Anggota',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink.shade900,
        onTap: _onItemTapped,
      ),
    );
  }
}