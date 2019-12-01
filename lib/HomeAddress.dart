import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app1/successbuy.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        centerTitle: true,
        title: Text("Adding Shiping Address",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(17.0, 35.0, 17.0, 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        )
                      )
                    ),
                  ),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(17.0, 0,15.0, 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Address",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey
                            ),
                        ),
                    ),
                  ),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(17.0, 0,15.0, 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "City",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(17.0, 0,15.0, 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "State/Province/Region",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(17.0, 0,15.0, 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Zip Code(Postal Code)",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(17.0, 0,15.0, 40.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Country",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey
                        ),
                      ),
                      suffixIcon: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.black,),
                    ),
                  ),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0,right: 17.0),
                child:SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child:  RaisedButton(
                    onPressed: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Complelete()));
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    color: Color(0xffDB3022),
                    child: Text("SAVE ADDRESS",style: TextStyle(color: Colors.white),),
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
