import 'package:flutter/material.dart';
import 'package:page2/Widgets/authentication.dart';
import 'package:page2/main.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return 
      
       Scaffold(
    
        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [
                  Color(0xFFe8d2ae),
                  Color(0xFF0f898c)
                ],  stops: [0.3, 0.8], // Adjust these values to control the mixture
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,)),
          child: SafeArea(
            
            
            child: Center(
              child: Column(

                children: [
                  Container(height: 300,width: 300,child: Image.asset("asstes/images/netlinklogo.png")),
                  SizedBox(height: 10,),
                  Text(
                    "Login Page",
                    style: TextStyle(
                      color: Color(0xFF005b5f),
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Schyler"
                    ),
                  ),
                  SizedBox(height: 10,),


                  Text(
                    "use your fingerprint to login",
                    style: TextStyle(color: Color(0xFF005b5f,),fontWeight: FontWeight.bold,                      fontFamily: "Schyler"
),
                  ),
                                    SizedBox(height: 10,),

                  Divider(
                    color: Colors.white60,
                  ),
                                    SizedBox(height: 30,),

                  ElevatedButton.icon(
                    
                    onPressed: () async {
                      bool auth = await Authentication.authentication();
                      print("can authentications:$auth");
                      if (auth) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>  FirstPage(),
                        ));
                      }
                    },
                    icon: Icon(Icons.fingerprint,color: Color(0xFF005b5f),),
                    label: Text("Authenticate",style: TextStyle(      color: Color(0xFF005b5f),                fontFamily: "Schyler"
),),
                    
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    ;
  }
}
