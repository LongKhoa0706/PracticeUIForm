import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Complelete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 192.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 70.0, right: 97.0, bottom: 50.0),
              child: Image.asset('bags.png'),
            ),
            Center(
              child: Text(
                "Success!",
                style: TextStyle(
                    fontSize: 34.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(75, 12, 75, 0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Your order will be delivered soon",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text("Thank you for choosing our app!",
                      style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            SizedBox(
              height: 163.0,
            ),
            Padding(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: (){
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  color: Color(0xffDB3022),
                  child: Text("CONTINUE SHOPPING  ",style: TextStyle(color: Colors.white),),
                ),
              ),
              padding: EdgeInsets.only(left: 18.0,right: 18.0,bottom: 60.0),
            ),
          ],
        )),
      ),
    );
  }
}
