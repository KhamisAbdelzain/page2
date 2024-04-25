import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page2/Widgets/HomePage_Widgets/daily_details.dart';
import 'package:page2/Widgets/HomePage_Widgets/global_detiles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFe8d2ae),
                  Color(0xFF0f898c)
                ], // Colors for the gradient
                  stops: [0.3, 0.8], // Adjust these values to control the mixture
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 800,
                  height: 125,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align children to the start (left)
                            children: [
                              Container(
                                  height: 38,
                                  child: Text("N",
                                      style: TextStyle(
                                          fontSize: 38,
                                          color: Color(0xFF0f898c),
                                          fontFamily: 'Khamis'))),
                              Container(
                                  height: 45,
                                  child: Text("Morning,Khamis",
                                      style: TextStyle(
                                          fontSize: 31,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700))),
                              Container(
                                  height: 30,
                                  child: Text("Let's be productive today!",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white))),
                            ],
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Center(
                            child: CircleAvatar(
                              backgroundImage: AssetImage('asstes/images/unnamed.png'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFf5e6c7)),
                    width: 393,
                    height: 500,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              width: 200,
                              height: 50,
                              child: Text(
                                "Overview",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'khamis3'),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your button press logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFffffff)),
                                  child: Container(
                                    padding: EdgeInsets.all(4),
                                    width: 115,
                                    height: 40,
                                    child: Row(
                                      children: [
                                        Text(
                                          "May 2023",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontFamily: 'khamis2',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.date_range,
                                          color: Color(0xFF0f898c),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            GlobalDetials(State: "Presence", score: "20", font: 'khamis2'),
                            Container(
                              height: 50,
                              width: 5,
                              child: VerticalDivider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            GlobalDetials(State:  "Absence", score: "3", font: 'khamis2'),
                            Container(
                              height: 50,
                              width: 5,
                              child: VerticalDivider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                            GlobalDetials(State: "Lateness", score: "1,5h", font: 'khamis2')
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 367,
                          width: 367,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFFf6efdc)),
                          child: Column(children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 13,
                                ),
                                Container(
                                  width: 330,
                                  height: 35,
                                  child: Text(
                                    "Tuesday 18 April 2023",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
        DailyDetails(time: "08:10 AM", time_comment: "Actual check in", time_state:  "Check In", time_note: "Late: 10 Minutes", icon: Icon(
                                          Icons.share_arrival_time_outlined,
                                          size: 30,
                                          color: Color(0xFF0f898c),
                                        ),),
        DailyDetails(time: "30:00:04", time_comment: "Start 12:05 PM", time_state: "Break", time_note: "On Going...", icon: Icon(
                                          Icons.coffee_maker_outlined,
                                          size: 30,
                                          color: Color(0xFF0f898c),
                                        ),),
        DailyDetails(time: "13:00 PM", time_comment: "After Break Schedule", time_state: "After Break", time_note: "it is now 12:35 PM", icon:  Icon(
                                          Icons.flash_on_outlined,
                                          size: 30,
                                          color: Color(0xFF0f898c),
                                        ),),
        DailyDetails(time: "17:00 PM", time_comment: "Check Out Schedule", time_state: "Check Out", time_note: "It is now 12:35 PM", icon:  Icon(
                                          Icons.time_to_leave_outlined,
                                          size: 30,
                                          color: Color(0xFF0f898c),
                                        ),),
                          /*  ElevatedButton(
                              onPressed: () {
                                // Add your button press logic here
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  backgroundColor: Colors.white),
                              child: Container(
                                height: 66,
                                width: 350, // Adjust the height as needed
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "Overtime",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Late : 10 Minutes",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 190),
                                    Icon(
                                      Icons.timelapse,
                                      size: 30,
                                      color: Color(0xFF0f898c),
                                    ),
                                  ],
                                ),
                              ),
                            )*/
                          ]),
                        ),
                        SizedBox(
                          height: 8,
                        )
                      ],
                    )),
              ],
            ));
  }
}