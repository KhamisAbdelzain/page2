import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 60,
        width: double.maxFinite,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Color(0xffffffff)),
        child : Row(
        children: [
          Spacer(flex: 1,),
          Text("4"),
          Spacer(flex: 1,),
          Stack(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage("https://img.freepik.com/premium-photo/young-asian-indian-student-with-glasses-backpack-holds-book-shows-thumbs-up_928503-89.jpg"),
              ),
            ],
          ),
          Spacer(flex: 1,),
          Text("Ahmed Mohamed",style: TextStyle(fontFamily: "Schyler"),),
          Spacer(flex:8,),
          Text("7/7"),
          Spacer(flex: 2,),
        ],
      ),
      
      ),
    );
  }
}