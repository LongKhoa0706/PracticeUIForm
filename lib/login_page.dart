import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/homeaddress.dart';
import 'package:flutter_app1/forgotpass.dart';
import 'package:flutter_app1/register_page.dart';
import 'package:flutter_app1/completebuy.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void saveData() {
    _formKey.currentState?.save();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Complelete()));
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    print(screenSize.height);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
                  child: Icon(Icons.arrow_back_ios),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 34.0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 34.0,
                        fontFamily: 'Metropolish',
                        color: Color(0xff222222),
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.fromLTRB(16, 73, 16, 0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextField(
                        style: TextStyle(
                          color: Color(0xff2D2D2D),
                          fontFamily: 'Metropolish',
                        ),
                        decoration: InputDecoration(
                          labelText: "Email",
                          contentPadding: EdgeInsets.only(
                              left: 10.0, top: 5.0, bottom: 5.0),
                          suffixIcon: Icon(Icons.check),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(8.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8),
                  child: Container(

                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 1.0),
                      )
                    ]),
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
                  padding: EdgeInsets.only(right: 16.0, top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(color: Color(0xff222222)),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                          });
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color(0xffDB3022),
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: saveData,
                      color: Color(0xffDB3022),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Metropolish',
                            letterSpacing: 1.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.0))),
                    ),
                  ),
                ),

                SizedBox(
                  height: screenSize.height * 0.10,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  alignment: Alignment.center,
                  child: Text(
                    "Or login with social account",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 15.0,
                    ),
                  ),
                ),

                buttonLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonLogin() {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                elevation: 10.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xffFFFFFF)),
                  width: 92,
                  height: 64,
                  child: Image.asset('icongoogle.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0),

                child:   Material(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  elevation: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Color(0xffFFFFFF)),
                    width: 92,
                    height: 64,
                    child: Image.asset('iconfb.png'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
