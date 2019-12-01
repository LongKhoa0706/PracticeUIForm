import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 58.0,
              ),
             Padding(
               padding: EdgeInsets.only(left: 15.0,bottom: 34.0),
               child:  Icon(Icons.arrow_back_ios),
             ),
              Padding(
                padding: EdgeInsets.only(left: 15.0,bottom: 87.0),
                child: Text(
                  "Forgot password",style: TextStyle(color: Color(0xff222222),fontSize: 34.0,fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0,right: 17.0,bottom: 16.0),
                child: Text(
                  "Please, enter your email address. You will receive a link to create a new password via email.",
                  style: TextStyle(color: Color(0xff222222),fontSize: 14.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0,right: 17.0,bottom: 70.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        )
                      )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0,right: 17.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))
                    ),
                    onPressed: (){
                    },
                    color: Color(0xffDB3022),
                    child: Text(
                      "SEND",style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
