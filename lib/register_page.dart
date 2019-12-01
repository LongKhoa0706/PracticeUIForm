import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app1/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 58.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Icon(Icons.arrow_back_ios),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0,top: 35.0,bottom: 73.0),
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Color(0xff222222),fontSize: 34.0,fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                   color: Colors.white
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 8.0),
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
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 44.0,bottom: 28.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: Text("Already have an account?",style: TextStyle(color: Color(0xff222222)),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0,right: 16.0),
                child: SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),

                    ),
                    color: Color(0xffDB3022),
                    child: Text("SIGN UP",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(
                height: 125.0,
              ),
              Center(
                child: Text("Or sign up with social account"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.0,bottom: 57.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,offset: Offset(1.0,1.0)
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      width: 92.0,
                      height: 64.0,
                      child: Image.asset('icongoogle.png'),
                    ),
                   Padding(
                     padding: EdgeInsets.only(left: 16.0),
                     child:  Container(
                       decoration: BoxDecoration(
                           shape: BoxShape.rectangle,
                           color: Colors.white,
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey,offset: Offset(1.0,1.0),
                             ),
                           ]
                       ),
                       width: 92.0,
                       height: 64.0,
                       child: Image.asset('iconfb.png'),
                     ),
                   )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
