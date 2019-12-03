import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app1/ratereview.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color(0xffF9F9F9),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 31,
                ),
                Text(
                  "Shipping address",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 21),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    elevation: 8,
                    child: Container(
                      width: 348,
                      height: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Padding(
                        padding: EdgeInsets.only(left: 28.0, right: 23),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Jan Doe",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                                Text(
                                  "Change",
                                  style: TextStyle(color: Color(0xffDB3022)),
                                ),
                              ],
                            ),
                            Text(
                              "3 Newbridge Court Chino Hills, CA 91709, United States",
                              maxLines: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Payment",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40.0),
                      child: Text(
                        "Change",
                        style: TextStyle(
                            color: Color(
                              0xffDB3022,
                            ),
                            fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.0, bottom: 51),
                  child: Row(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        elevation: 8.0,
                        child: Container(
                          width: 65,
                          height: 38,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Image.asset('iconmastercard.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.0),
                        child: Text(
                          "**** **** **** 3947",
                          style: TextStyle(
                              color: Color(0xff222222), fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Delivery method",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Material(
                        child: Container(
                          height: 72,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('fedex.png'),
                              Text(
                                "2-3 days",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Container(
                          width: 100,
                          height: 72,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('usps.png'),
                              Text(
                                "2-3 days",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Container(
                          width: 100,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('dhl.png'),
                              Text(
                                "2-3 days",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 52,bottom: 26),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Order",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.0),
                          ),
                          Text(
                            "112 USD",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Delivery",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.0),
                          ),
                          Text(
                            "112 USD",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Summary",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 16.0,fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "127 USD",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  
                  padding: EdgeInsets.only(bottom: 26),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>RateReview()));
                      },
                      color: Color(0xffDB3022),
                      child: Text("SUBMIT ORDER",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
