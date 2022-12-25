import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footballapp/Screens/bottom_navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key  key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/Logo.png',
                    width: 500,
                    height: 250,
                  )
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Form(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14)),
                        child: TextFormField(
                          enabled: true,
                          onChanged: (value) {
                            username = value;
                          },
                          decoration: InputDecoration(
                              hintText: 'Username',
                              filled: true,
                              border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14)),
                        child: TextFormField(
                          obscureText: _isObscure,
                          onChanged: (value) {
                            password =
                                value;
                          },
                          decoration: InputDecoration(
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                splashRadius: 1,
                                icon: Icon(_isObscure
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              filled: true,
                              border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text('Log in'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink.shade900,
                    ),
                    onPressed: () {
                      String text = '';
                      if (username == "Fito" && password == "123") {
                        text ="Login Berhasil";
                        _isObscure = true;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BottomNavbar()));
                      } else if (username == "Husen" && password == "123"){
                        text ="Login Berhasil";
                        _isObscure = true;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BottomNavbar()));
                      }else{
                        text = "Login Gagal";
                        _isObscure = false;
                      }
                      SnackBar snackBar = SnackBar(content: Text(text), backgroundColor: Colors.pink.shade900,);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}