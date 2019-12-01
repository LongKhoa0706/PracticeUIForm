import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  child: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 34.0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 35.0,
                        fontFamily: 'Metropolish',
                        color: Color(0xff222222),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(16, 73, 16, 8),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextField(
                        style: TextStyle(color: Color(0xff2D2D2D), fontFamily: 'Metropolish',),
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0, bottom: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Forgot your password?",
                        style: TextStyle(color: Color(0xff222222)),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xffDB3022),
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xffDB3022),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white,fontFamily: 'Metropolish',letterSpacing: 1.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 93.0, left: 95.0, bottom: 12.0),
                  child: Center(
                    child: Text(
                      "Or login with social account",
                      style: TextStyle(color: Color(0xff222222),fontFamily: 'Metropolish'),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(color: Colors.grey,offset: Offset(1.0,1.0))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xffFFFFFF)),

                      width: 92,
                      height: 64,
                      child: Image.asset('icongoogle.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child:  Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0,1.0),
                              )
                            ],
                            shape: BoxShape.rectangle,
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        width: 92,
                        height: 64,
                        child: Image.asset('iconfb.png'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

      ),
    );
  }
}
