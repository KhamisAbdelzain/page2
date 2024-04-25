import 'dart:ffi';
import 'dart:ui';

class WelcomeModel{
  String text;
double height;
double fontSize;
Color ?color;
String ?fontFamily;
WelcomeModel({required this.text,required this.height,required this.fontSize,this.color,this.fontFamily});
}