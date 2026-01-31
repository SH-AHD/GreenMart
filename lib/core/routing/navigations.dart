import 'package:flutter/material.dart';

void pushPage({required BuildContext context,required Widget newScreen}){
Navigator.push(context, MaterialPageRoute(builder: (context)=>newScreen));

}

void pushReplacementPage({required BuildContext context,required Widget newScreen}){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>newScreen));

}