import 'package:flutter/material.dart';

class GlobalDetials extends StatelessWidget {
   GlobalDetials({super.key, required this.State,required this.score,required this.font});
String State;
String score;
String font;
  @override
  Widget build(BuildContext context) {
    return  Container(
                              padding: EdgeInsets.all(2),
                              width: 110,
                              height: 66,
                              child: Column(
                                children: [
                                  Text(
                                   State,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    score,
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: font),
                                  ),
                                ],
                              ),
                            );
  }
}