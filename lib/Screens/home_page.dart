import 'package:flutter/material.dart';
import 'package:footballapp/Screens/HomeScreen.dart';
import 'package:footballapp/Screens/login_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink.shade900,
      ),
      backgroundColor: Colors.white,
      // body: tabs[_currentIndex],
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFAD1457),
                  const Color(0xFFFCE4EC),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              )),
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('Leagues Tables'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pink.shade800,
                          fixedSize: Size.fromWidth(200)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('Logout'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          fixedSize: Size.fromWidth(200)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
                      },
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}