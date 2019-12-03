import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RateReview extends StatefulWidget {
  @override
  _RateReviewState createState() => _RateReviewState();
}

class _RateReviewState extends State<RateReview> {
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "Rating and review",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 18.0, right: 31.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "8 reviews",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: checkBox,
                          onChanged: (bool valute) {
                            setState(() {
                              checkBox = !checkBox;
                            });
                          },
                        ),
                        Text("With photo"),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Stack(
                children: <Widget>[
                  Positioned(
                    top: -10,
                    child: Image.asset(
                      'avartar.png',
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 20),
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Container(
                      width: double.infinity,
                      height: 360,
                      padding: EdgeInsets.only(left: 24, top: 24),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10.0))),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Kim Shine",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8, right: 18),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image.asset('iconrate.png'),
                                      Text(
                                        "August 13, 2019",
                                        style:
                                        TextStyle(color: Color(0xff9b9b9b)),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15, right: 20),
                                  child: Text(
                                    "I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. "
                                        "I am 5'3 about 155lbs and I carry all my weight in my upper body. When I put it on I f"
                                        "elt like it thinned me put and I got so many compliments.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 0.5,
                                        fontSize: 14),
                                  ),
                                ),
                                Container(
                                    width: double.infinity,
                                    height: 150,
                                    constraints: BoxConstraints.expand(),
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: <Widget>[
                                        Image.asset('small.png'),
                                        Image.asset('small-1.png'),
                                        Image.asset('small-2.png'),
                                      ],
                                    ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
