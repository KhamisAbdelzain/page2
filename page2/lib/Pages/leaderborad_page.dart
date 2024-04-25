import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page2/Widgets/LeaderboradPageWidgets/Listview.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFe8d2ae), Color(0xFF0F898C)],
          stops: [0.3, 0.8],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 12),
          Expanded(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        "Leaderboard",
                        style: TextStyle(
                          fontSize: 34,
                          color: Color(0xFF002C31),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildAvatarColumn(1, "https://collegepossible.org/wp-content/uploads/2022/12/stock_students_091_web.png", "Nada", "7/7", 40, 'third_medal.png'),
                        _buildAvatarColumn(2, "https://www.shutterstock.com/image-photo/portrait-cheerful-male-international-indian-600nw-2071252046.jpg", "Mohaned", "7/7", 55, 'first_medal.png'),
                        _buildAvatarColumn(3, "https://d2jyir0m79gs60.cloudfront.net/news/images/successful-college-student-lg.png", "Jone", "7/7", 50, 'secound_medal.png'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    child: SizedBox(
                      height: 28,
                      child: Text(
                        "Show up, stand out, succeed!",
                        style: TextStyle(
                          color: Color(0xFF002C31),
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 363,
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: ((context, index) {
                        return MyWidget();
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget _buildAvatarColumn(int rank, String imageUrl, String name, String score, double avatarRadius, String medalIconPath) {
    return Column(
      children: [
        Spacer(flex: 1),
        Stack(
          children: [
            CircleAvatar(
              radius: avatarRadius,
              backgroundImage: NetworkImage(imageUrl),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'asstes/icons/$medalIconPath',
                height: avatarRadius * 0.75,
                width: avatarRadius * 0.75,
              ),
            ),
          ],
        ),
        Text(name),
        Text(score),
        Spacer(flex: 1),
      ],
    );
  }
}
