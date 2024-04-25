import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DailyDetails extends StatelessWidget {
   DailyDetails({super.key,required this.time,required this.time_comment,required this.time_state,required this.time_note,required this.icon,});
String time;
String time_comment;
String time_state;
String time_note;
Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(15),
                                    width: 175,
                                    height: 75,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          time,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'khamis2'),
                                        ),
                                        Text(
                                         time_comment,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                   padding: EdgeInsets.all(9),
                                  decoration: BoxDecoration( borderRadius: BorderRadius.circular(25),color: Color(0XFFffffff)),
                                  height: 64,
                                  width: 175, // Adjust the height as needed
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 5,),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 1,
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              height: 100,
                                              width: 100,
                                              child: Text(
                                                time_state,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 1,
                                          ),
                                          Container(
                                            padding: EdgeInsets.only
                                            (left:4 ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              
                                            ),
                                            height: 15,
                                            width: 80,
                                            child: Text(
                                              time_note,
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.grey,
                                                  fontWeight:
                                                      FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(flex: 1,),
                                      Expanded(flex: 1, child: icon),                                        Spacer(flex: 1,),
                                     
                                
                                    ],
                                  ),
                                )
                              ],
                            );
  }
}