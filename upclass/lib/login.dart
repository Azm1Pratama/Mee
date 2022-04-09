import 'package:flutter/material.dart';
import 'package:upclass/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 116, 115, 115),
        body: Container(
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 5, top: 100),
                child: Image.asset(
                  'assets/image/logo.png',
                  height: 70,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Column(
                  children: <Widget>[
                    Form(
                        child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username/Email",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    )),
                    Form(
                        child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      primary: Color.fromARGB(255, 210, 11, 11),
                      onPrimary: Color.fromARGB(255, 223, 213, 213)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text("Login"),
                ),
              ),
              Row(
                children: <Widget>[Container()],
              )
            ],
          ),
        ));
  }
}
