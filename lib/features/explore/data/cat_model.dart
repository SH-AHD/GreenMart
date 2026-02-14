import 'package:flutter/material.dart';

class CatModel {
String id;
 Color? color;
 String imgUrl;
 double? imgHeight;
 String cardTitle;


CatModel({
required this.id,
this.color,
this.imgUrl="",
this.imgHeight,
this.cardTitle="",
});
  
}
