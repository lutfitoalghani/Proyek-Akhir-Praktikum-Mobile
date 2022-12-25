import 'package:flutter/material.dart';

class KelompokPage extends StatefulWidget {
  const KelompokPage({Key  key}) : super(key: key);

  @override
  _KelompokPageState createState() => _KelompokPageState();
}

int _currentIndex = 0;

class _KelompokPageState extends State<KelompokPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Halaman Kelompok'),
          backgroundColor: Colors.pink.shade900,
        ),
        backgroundColor: Colors.white,
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
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Center(
                child: ListView(
                  children: [
                    Container(
                      height: 586,
                      child: ListView(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 500.0,
                                height: 250.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                                  // color: Colors.redAccent,
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(300),
                                    child: Image.asset(
                                        "assets/husen.jpeg")),
                              ),
                              SizedBox(height: 30),
                              Text(
                                "Muhammad Al Husain Syah",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "124200034",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Lato'),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 500.0,
                                height: 230.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                                  // color: Colors.redAccent,
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(300),
                                    child:
                                    Image.asset("assets/fito.jpeg")),
                              ),
                              SizedBox(height: 30),
                              Text(
                                "Lutfito Al Ghani ",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "124200076",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Lato'),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
