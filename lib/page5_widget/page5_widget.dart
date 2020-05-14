/*
*  page5_widget.dart
*  Quiz5
*
*  Created by BB Caspian.
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:quiz5/values/values.dart';

class Page5Widget extends StatefulWidget {
  @override
  _Page5WidgetState createState() => _Page5WidgetState();
}

class _Page5WidgetState extends State<Page5Widget> {
  bool checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              top: -1,
              right: 0,
              child: Image.asset(
                "assets/images/gradient.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              top: 16,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(left: 15),
                        child: FlatButton(
                          onPressed: () {
                            print('Back Arrow');
                          },
                          child: Image.asset(
                            "assets/images/back_arrow.png",
                          ),
                        )),
                  ),
                  Container(
                    height: 745,
                    margin: EdgeInsets.only(top: 27),
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: ListView(
                        children: <Widget>[
                          
                          Container(
                            child: TextField(
                              maxLines: 4,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                hintText: "Question...",
                                fillColor: Colors.grey[300],
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  child: Text(
                                    'Summary',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),
                          SizedBox(height: 30),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text('No. of questions'),
                                SizedBox(width: 140),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                      hintText: "10",
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text('Total length (minutes)'),
                                SizedBox(width: 103),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                      hintText: "10",
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text('Grade'),
                                SizedBox(width: 90),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                      hintText: "Form 2/Grade 8",
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text('Subject'),
                                SizedBox(width: 80),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                      hintText: "Add Math",
                                      fillColor: Colors.grey[300],
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 185),
                                Text('Share with others'),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    print('Share Social Media');
                                  },
                                  child: Image.asset(
                                      'assets/images/share_socmedia.png',
                                      width: 24,
                                      height: 24),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 55),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FlatButton(
                                    child: Image.asset(
                                        'assets/images/but_done.png'),
                                    onPressed: () {
                                      print('Done');
                                    }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
